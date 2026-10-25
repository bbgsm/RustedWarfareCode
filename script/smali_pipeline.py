# -*- coding: utf-8 -*-
"""
smali -> Java 全流程流水线：把三个脚本串成一步。

流程:
    1. 拆分 smali    (split_smali.split_file)  —— 一个 .smali 按方法拆成 __header__.smali + 每方法一个 .smali
    2. AI 反编译     (smali2ai.convert_dir)    —— 目录内每个 .smali 调用大模型转成同名 .java
    3. 合并 java     (merge_java.merge_dir)    —— 把目录内 java 碎片合并为一个完整类 <类名>_merged.java

API 地址、key、默认模型沿用 smali2ai.py 顶部的“配置区”，本脚本不重复定义。

用法:
    python smali_pipeline.py path/to/ag500.smali              # 全流程，输出到 out/ag500/
    python smali_pipeline.py path/to/ag500.smali -o out       # 指定输出根目录
    python smali_pipeline.py path/to/ag500.smali -f           # 覆盖已存在的 java 片段
    python smali_pipeline.py path/to/ag500.smali -m deepseek-flash --retry 5
    python smali_pipeline.py path/to/ag500.smali --skip-split    # 目录已拆好，只做反编译+合并
    python smali_pipeline.py path/to/ag500.smali --skip-convert  # java 片段已生成，只重新合并
"""

import argparse
import os
import sys

# 保证无论从哪个工作目录运行，都能 import 到同目录下的三个模块
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import split_smali   # noqa: E402
import merge_java    # noqa: E402

# smali2ai 顶部 `from openai import OpenAI`，仅在第 2 步真正需要时惰性导入，
# 这样未安装 openai 也能跑「拆分 + 合并」（--skip-convert）


def main():
    parser = argparse.ArgumentParser(
        description="smali 拆分 -> AI 反编译 java -> 合并 java 的全流程流水线"
    )
    parser.add_argument("smali_file", help="要处理的 .smali 文件路径")
    parser.add_argument("-o", "--out", default="out",
                        help="输出根目录（默认: 脚本所在目录下的 out）")
    parser.add_argument("-m", "--model", default=None,
                        help="AI 模型名（默认取 smali2ai.py 配置区的 MODEL）")
    parser.add_argument("-f", "--force", action="store_true", help="覆盖已存在的 .java 片段")
    parser.add_argument("--retry", type=int, default=3, help="单文件失败重试次数")
    parser.add_argument("--with-header", action="store_true",
                        help="拆分时把类头部复制进每个方法文件（旧行为）")
    parser.add_argument("-c", "--class-name", default=None,
                        help="合并后的类名（默认取 smali 文件名）")
    parser.add_argument("--skip-split", action="store_true", help="跳过第 1 步：拆分 smali")
    parser.add_argument("--skip-convert", action="store_true", help="跳过第 2 步：AI 反编译")
    parser.add_argument("--skip-merge", action="store_true", help="跳过第 3 步：合并 java")
    args = parser.parse_args()

    smali_file = args.smali_file
    if not os.path.isfile(smali_file) and not args.skip_split:
        sys.exit(f"错误: 文件不存在: {smali_file}")

    # 输出根目录默认相对脚本所在目录（与 split_smali 保持一致）
    out_root = args.out
    if not os.path.isabs(out_root):
        out_root = os.path.join(os.path.dirname(os.path.abspath(__file__)), out_root)

    base = os.path.splitext(os.path.basename(smali_file))[0]
    out_dir = os.path.join(out_root, base)

    # ---------- 第 1 步：拆分 smali ----------
    if not args.skip_split:
        print("=" * 60)
        print(f"[1/3] 拆分 smali: {smali_file}")
        print("=" * 60)
        out_dir, files = split_smali.split_file(smali_file, out_root,
                                                with_header=args.with_header)
        print(f"已拆分 {len(files)} 个文件 -> {out_dir}")
    else:
        print(f"[1/3] 跳过拆分，复用目录: {out_dir}")
        if not os.path.isdir(out_dir):
            sys.exit(f"目录不存在，无法跳过拆分: {out_dir}")

    # ---------- 第 2 步：AI 反编译 smali -> java ----------
    if not args.skip_convert:
        print()
        print("=" * 60)
        print("[2/3] AI 反编译 smali -> java")
        print("=" * 60)
        import smali2ai  # 惰性导入（见顶部说明）
        client = smali2ai.build_client()
        model = args.model or smali2ai.MODEL
        print(f"目录: {out_dir}")
        print(f"接口地址: {client.base_url}")
        ok, skip, fail = smali2ai.convert_dir(
            client, model, out_dir, out_dir,
            force=args.force, retry=args.retry,
        )
        if ok + skip == 0:
            sys.exit("没有任何 java 片段生成，终止合并。")
    else:
        print(f"[2/3] 跳过 AI 反编译，复用已有 java 片段")

    # ---------- 第 3 步：合并 java 片段 ----------
    if not args.skip_merge:
        print()
        print("=" * 60)
        print("[3/3] 合并 java 片段为完整类")
        print("=" * 60)
        class_name = args.class_name or base
        out_path = merge_java.merge_dir(out_dir, class_name=class_name)
        print()
        print(f"全流程完成，最终文件: {out_path}")
    else:
        print(f"[3/3] 跳过合并")


if __name__ == "__main__":
    main()
