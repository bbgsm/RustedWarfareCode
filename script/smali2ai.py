# -*- coding: utf-8 -*-
r"""
调用 OpenAI 将 out/ag500 目录下的 .smali 文件批量转换为同名 .java 文件。

用法:
    python smali2ai.py                          # 默认处理 .\out\ag500
    python smali2ai.py -d out/ag500             # 指定目录
    python smali2ai.py -f                       # 覆盖已存在的 java（默认跳过）
    python smali2ai.py -m gpt-4o                # 指定模型

API 地址和 key 在下方“配置区”直接修改，不读任何文件/环境变量
"""

import argparse
import os
import re
import sys
import time

from openai import OpenAI

# ==================== 配置区（直接在这里改） ====================
API_KEY = "你的KEY"
# 接口地址，例如 "https://api.xxx.com/v1"；设为 None 则用 OpenAI 官方地址
BASE_URL = "https://api.deepseek.com"
# 默认模型（可用 -m 临时覆盖）
# MODEL = "deepseek-v4-pro"
MODEL = "deepseek-flash"
# =================================================================

SYSTEM_PROMPT = (
    "你是一名精通 Android smali 字节码逆向还原为 Java 的专家。"
    "请把用户提供的 smali 代码转换为等价的、可编译的 Java 代码。"
    "只输出 Java 代码，不要任何解释、不要转换说明注释、不要 markdown 代码围栏、不要结尾多余文字。"
)

USER_PROMPT_TEMPLATE = (
    "请将下面的 smali 内容完整、准确地转换为 Java 代码。\n\n"
    "【输出格式】\n"
    "1. 仅输出 Java 代码，不要输出任何解释、注释或额外说明，也不要使用 Markdown 代码块。\n"
    "2. 不得只输出语句片段，必须保留输入中已有的完整代码结构。\n\n"
    "【完整性要求】\n"
    "1. smali 中每个以 .method 开始、以 .end method 结束的方法，都必须转换为一个完整的 Java 方法。\n"
    "2. 每个 Java 方法必须完整包含：方法修饰符、返回类型、方法名、参数列表、左大括号、方法体和右大括号。\n"
    "3. 严禁省略方法签名、方法名、参数列表、返回类型或方法首尾的大括号。\n"
    "4. 如果 smali 仅包含方法代码、没有类声明，则输出对应的完整 Java 方法定义及方法体，不要补充类声明；"
    "这里的“仅包含方法代码”不意味着可以省略方法签名或大括号。\n"
    "5. 只有当输入确实是没有 .method 声明的孤立指令片段时，才可以只输出对应的 Java 语句。\n"
    "6. 如果 smali 包含类、字段、内部类或其他结构，应完整保留并转换这些结构，不得擅自省略。\n\n"
    "【转换要求】\n"
    "1. 严格保持 smali 中已有的类名、方法名和字段名原样，不要重命名或美化标识符。\n"
    "2. 严格按照 smali 的实际指令和控制流转换，不得虚构、增加、删除或简化代码逻辑。\n"
    "3. 文件名编码了混淆后的方法签名，可用于辅助理解，但不得用文件名替代或改写 smali 中的实际代码。\n"
    "4. 调用方法时，如果传递的实参是 null，且目标参数为引用类型，必须按照目标参数类型进行显式强制转换。"
    "例如目标方法为 a(String value)，应写成 a((String) null)，而不是 a(null)，以确保方法重载能够正确匹配。\n"
    "5. 输出前请自行检查：每个 .method 都有对应的完整 Java 方法，所有方法签名和大括号均未遗漏，且大括号正确配对；"
    "不要输出检查过程。\n\n"
    "文件名：{name}\n\n"
    "smali 内容：\n"
    "```\n{content}\n```\n"
)

# 单次请求允许的最大 smali 字符数，超过则跳过并提示（避免超长上下文）
MAX_SMALI_CHARS = 400_000


def strip_code_fences(text: str) -> str:
    """去掉 AI 可能自带的 ``` 围栏和前后空白。"""
    text = text.strip()
    m = re.match(r"^```[a-zA-Z0-9_]*\s*\n(.*)\n```$", text, re.S)
    if m:
        text = m.group(1).strip()
    return text


def convert_one(client: OpenAI, model: str, name: str, content: str, dst_path: str) -> str:
    """真流式：API 每返回一个 chunk 立即打印到终端并写入目标文件，不等待全部结果。"""
    stream = client.chat.completions.create(
        model=model,
        messages=[
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": USER_PROMPT_TEMPLATE.format(name=name, content=content)},
        ],
        temperature=0,
        stream=True,
    )
    parts = []
    reasoning_started = False
    content_started = False
    with open(dst_path, "w", encoding="utf-8", newline="\n") as out:
        for chunk in stream:
            if not chunk.choices:
                continue
            delta = chunk.choices[0].delta
            # 推理模型的思考过程（兼容不同字段名：reasoning_content / reasoning），只打印不写入 java 文件
            reasoning = getattr(delta, "reasoning_content", None) or getattr(delta, "reasoning", None)
            if reasoning:
                if not reasoning_started:
                    reasoning_started = True
                    print("[推理过程] " + "-" * 50, flush=True)
                print(reasoning, end="", flush=True)
            if delta.content:
                if reasoning_started and not content_started:
                    print()
                    print("[代码开始] " + "-" * 50, flush=True)
                content_started = True
                parts.append(delta.content)
                out.write(delta.content)   # 边收边写文件
                out.flush()
                print(delta.content, end="", flush=True)  # 边收边打印
    print()  # 流结束后换行，避免后续日志接在代码尾巴上

    raw = "".join(parts)
    java_code = strip_code_fences(raw)
    # 只有 AI 违规带了围栏/首尾空白时才回写清理，正常情况下文件内容就是流式写入的那份
    if java_code != raw.strip():
        with open(dst_path, "w", encoding="utf-8", newline="\n") as out:
            out.write(java_code + "\n")
    elif not raw.endswith("\n"):
        with open(dst_path, "a", encoding="utf-8", newline="\n") as out:
            out.write("\n")
    return java_code


def convert_dir(client: OpenAI, model: str, src_dir: str, dst_dir: str,
                force: bool = False, retry: int = 3):
    """把 src_dir 下所有 .smali 批量转换为 dst_dir 下同名 .java。

    返回 (成功, 跳过, 失败) 计数，供流水线脚本复用。
    """
    smali_files = sorted(
        f for f in os.listdir(src_dir) if f.lower().endswith(".smali")
    )
    if not smali_files:
        print(f"目录中没有 .smali 文件: {src_dir}")
        return 0, 0, 0

    total = len(smali_files)
    print(f"模型: {model}  共 {total} 个 smali 文件")
    ok = skip = fail = 0

    for idx, name in enumerate(smali_files, 1):
        java_name = os.path.splitext(name)[0] + ".java"
        dst_path = os.path.join(dst_dir, java_name)

        if os.path.exists(dst_path) and not force:
            print(f"[{idx}/{total}] SKIP(已存在) {name}")
            skip += 1
            continue

        with open(os.path.join(src_dir, name), "r", encoding="utf-8", errors="replace") as f:
            content = f.read()

        if len(content) > MAX_SMALI_CHARS:
            print(f"[{idx}/{total}] SKIP(过大 {len(content)} 字符) {name}")
            skip += 1
            continue

        last_err = None
        for attempt in range(1, retry + 1):
            try:
                print(f"[{idx}/{total}] 转换中({attempt}/{retry}) {name} ...", flush=True)
                print("-" * 60)
                java_code = convert_one(client, model, name, content, dst_path)
                print("-" * 60)
                if not java_code.strip():
                    if os.path.exists(dst_path):
                        os.remove(dst_path)
                    raise ValueError("AI 返回空内容")
                print(f"    -> {java_name}")
                ok += 1
                last_err = None
                break
            except Exception as e:
                last_err = e
                print(f"    失败: {e}")
                time.sleep(2 * attempt)

        if last_err is not None:
            fail += 1
            # 所有重试都失败，删掉本次留下的（可能只写了一半的）文件，避免下次被当作已完成而跳过
            if os.path.exists(dst_path):
                os.remove(dst_path)

    print(f"\n完成: 成功 {ok} / 跳过 {skip} / 失败 {fail}")
    return ok, skip, fail


def build_client():
    """按脚本顶部配置区创建 OpenAI 客户端；未填 key 时直接退出。"""
    if not API_KEY or "替换" in API_KEY or API_KEY == "你的KEY":
        sys.exit("请先在脚本顶部的配置区填写 API_KEY")
    return OpenAI(api_key=API_KEY, base_url=BASE_URL)


def main():
    parser = argparse.ArgumentParser(description="OpenAI 批量 smali -> java 转换")
    parser.add_argument("-d", "--dir", default=os.path.join("out", "bp437"), help="smali 目录")
    parser.add_argument("-m", "--model", default=MODEL, help="模型名")
    parser.add_argument("-f", "--force", action="store_true", help="覆盖已存在的 .java")
    parser.add_argument("-o", "--out", default=None, help="输出目录（默认与 smali 同目录）")
    parser.add_argument("--retry", type=int, default=3, help="单文件失败重试次数")
    args = parser.parse_args()

    src_dir = os.path.abspath(args.dir)
    dst_dir = os.path.abspath(args.out) if args.out else src_dir
    os.makedirs(dst_dir, exist_ok=True)

    if not os.path.isdir(src_dir):
        sys.exit(f"目录不存在: {src_dir}")

    client = build_client()
    print(f"目录: {src_dir}")
    print(f"接口地址: {client.base_url}")

    convert_dir(client, args.model, src_dir, dst_dir,
                force=args.force, retry=args.retry)


if __name__ == "__main__":
    main()
