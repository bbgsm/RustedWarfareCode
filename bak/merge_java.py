# -*- coding: utf-8 -*-
r"""
把一个目录里已反编译好的同名 java 片段（每个文件包了一层 class 声明的单方法碎片）
合并为一个完整的 java 文件。

合并规则:
    - package 语句取第一个出现的，只保留一份
    - import 语句去重后合并
    - 每个文件的类体外层大括号内的内容（字段/方法）按文件名顺序拼接
    - 无大括号包裹的文件（纯方法/字段碎片）内容原样并入类体
    - __header__ 优先排在最前（类头和字段在前，方法在后，符合 java 惯例）
    - 每个来源片段前加 // ==== from xxx.java ==== 标记，便于回溯

用法:
    python merge_java.py                          # 默认合并 .\out\ag500，输出 ag500_merged.java 到该目录
    python merge_java.py -d out/ag500             # 指定目录
    python merge_java.py -c ag500                 # 指定类名（默认取目录名）
    python merge_java.py -o D:\path\to\Ag500.java # 指定输出文件
"""

import argparse
import os
import re
import sys

CLASS_DECL_RE = re.compile(r"\b(class|interface|enum)\s+\w+")


def blank_comments(text: str) -> str:
    """把注释内容替换为空格（保留长度和换行），便于在原文坐标上找大括号。"""
    out = list(text)
    i, n = 0, len(text)
    in_str = in_char = False
    while i < n:
        c = text[i]
        if in_str:
            if c == "\\":
                i += 2
                continue
            if c == '"':
                in_str = False
            i += 1
        elif in_char:
            if c == "\\":
                i += 2
                continue
            if c == "'":
                in_char = False
            i += 1
        elif c == "/" and i + 1 < n and text[i + 1] == "/":
            while i < n and text[i] != "\n":
                out[i] = " "
                i += 1
        elif c == "/" and i + 1 < n and text[i + 1] == "*":
            while i < n and not (text[i] == "*" and i + 1 < n and text[i + 1] == "/"):
                if text[i] != "\n":
                    out[i] = " "
                i += 1
            if i < n:
                out[i] = " "
                out[i + 1] = " "
                i += 2
        else:
            if c == '"':
                in_str = True
            elif c == "'":
                in_char = True
            i += 1
    return "".join(out)


def find_class_body_end(text: str, open_brace_pos: int) -> int:
    """从第一个 { 开始做括号配对（跳过字符串/字符/注释），返回匹配 } 的位置。"""
    depth = 0
    i = open_brace_pos
    n = len(text)
    in_str = in_char = in_line_comment = in_block_comment = False
    while i < n:
        c = text[i]
        if in_line_comment:
            if c == "\n":
                in_line_comment = False
        elif in_block_comment:
            if c == "*" and i + 1 < n and text[i + 1] == "/":
                in_block_comment = False
                i += 1
        elif in_str:
            if c == "\\":
                i += 1
            elif c == '"':
                in_str = False
        elif in_char:
            if c == "\\":
                i += 1
            elif c == "'":
                in_char = False
        else:
            if c == "/" and i + 1 < n and text[i + 1] == "/":
                in_line_comment = True
                i += 1
            elif c == "/" and i + 1 < n and text[i + 1] == "*":
                in_block_comment = True
                i += 1
            elif c == '"':
                in_str = True
            elif c == "'":
                in_char = True
            elif c == "{":
                depth += 1
            elif c == "}":
                depth -= 1
                if depth == 0:
                    return i
        i += 1
    return -1


def extract_body(text: str):
    """返回 (类声明文本, 类体)。只有文件确实被 class 声明包裹时才剥类壳；
    裸方法/字段片段（无 class 包裹）原样整体并入，不能误剥方法签名。"""
    blanked = blank_comments(text)
    brace = blanked.find("{")
    if brace == -1:
        return None, text
    header = blanked[:brace]
    if not CLASS_DECL_RE.search(header):
        # 第一个大括号前没有 class 声明 => 裸方法/字段碎片，整体作为成员
        return None, text
    end = find_class_body_end(text, brace)
    if end == -1:
        # 括号不配对（输出被截断等），退化为整体并入
        return None, text
    # 类声明 = 大括号前的文本去掉注释和 package/import 行（保留 implements 等跨行内容）
    decl = re.sub(r"/\*.*?\*/", "", text[:brace], flags=re.S)
    decl = re.sub(r"//[^\n]*", "", decl)
    decl = "\n".join(
        ln for ln in decl.splitlines()
        if not re.match(r"\s*(package|import)\b", ln)
    ).strip()
    body = text[brace + 1:end]
    return decl, body


def split_members(body: str):
    """把类体拆成成员（顶层字段/方法）列表，按大括号配对和顶层分号切分；
    字符串/注释/圆括号内的分号和大括号不参与切分。"""
    members = []
    current = []
    brace = paren = 0
    in_str = in_char = in_lc = in_bc = False
    i, n = 0, len(body)
    while i < n:
        c = body[i]
        if in_lc:
            current.append(c)
            if c == "\n":
                in_lc = False
        elif in_bc:
            current.append(c)
            if c == "*" and i + 1 < n and body[i + 1] == "/":
                current.append("/")
                in_bc = False
                i += 1
        elif in_str:
            current.append(c)
            if c == "\\" and i + 1 < n:
                current.append(body[i + 1])
                i += 1
            elif c == '"':
                in_str = False
        elif in_char:
            current.append(c)
            if c == "\\" and i + 1 < n:
                current.append(body[i + 1])
                i += 1
            elif c == "'":
                in_char = False
        else:
            if c == "/" and i + 1 < n and body[i + 1] == "/":
                current.append("//")
                in_lc = True
                i += 1
            elif c == "/" and i + 1 < n and body[i + 1] == "*":
                current.append("/*")
                in_bc = True
                i += 1
            elif c == '"':
                current.append(c)
                in_str = True
            elif c == "'":
                current.append(c)
                in_char = True
            else:
                current.append(c)
                if c == "{":
                    brace += 1
                elif c == "}":
                    brace -= 1
                    if brace == 0:
                        members.append("".join(current).strip("\n "))
                        current = []
                elif c == "(" :
                    paren += 1
                elif c == ")":
                    paren = max(0, paren - 1)
                elif c == ";" and brace == 0 and paren == 0:
                    members.append("".join(current).strip("\n "))
                    current = []
        i += 1
    leftover = "".join(current).strip("\n ")
    if leftover:
        members.append(leftover)
    return [m for m in members if m.strip()]


def collect_java_files(src_dir: str):
    files = [f for f in os.listdir(src_dir) if f.lower().endswith(".java")]
    # __header__ 排最前，其余按文件名排序；排除合并产物自身
    files = [f for f in files if not f.endswith("_merged.java")]
    files.sort(key=lambda f: (not f.lower().startswith("__header__"), f.lower()))
    return files


def main():
    parser = argparse.ArgumentParser(description="合并目录内多个 java 片段为一个 java 文件")
    parser.add_argument("-d", "--dir", default=os.path.join("out", "ag500"), help="java 片段目录")
    parser.add_argument("-c", "--class-name", default=None, help="合并后的类名（默认取目录名）")
    parser.add_argument("-o", "--out", default=None, help="输出文件路径（默认 <目录>/<类名>_merged.java）")
    args = parser.parse_args()

    src_dir = os.path.abspath(args.dir)
    if not os.path.isdir(src_dir):
        sys.exit(f"目录不存在: {src_dir}")

    class_name = args.class_name or os.path.basename(src_dir)
    out_path = os.path.abspath(args.out) if args.out else os.path.join(src_dir, class_name + "_merged.java")

    java_files = collect_java_files(src_dir)
    if not java_files:
        sys.exit(f"目录中没有 .java 文件: {src_dir}")

    package = None
    imports = []          # 保序去重
    members = []          # 所有片段拆出的类成员
    decl_line = None      # 类声明行（取第一个找到的）
    used_files = []

    for name in java_files:
        with open(os.path.join(src_dir, name), "r", encoding="utf-8", errors="replace") as f:
            text = f.read()

        # 去掉整文件注释掉的内容不参与；这里按行提取 package / import
        for m in re.finditer(r"^\s*package\s+([\w.]+)\s*;", text, re.M):
            package = package or m.group(1)
        for m in re.finditer(r"^\s*import\s+(static\s+)?([\w.*]+)\s*;", text, re.M):
            imp = f"import {'static ' if m.group(1) else ''}{m.group(2)};"
            if imp not in imports:
                imports.append(imp)

        d, body = extract_body(text)
        # 裸片段里自带的 package/import 行不能混进类体
        if d is None:
            body = re.sub(r"^\s*(package|import)[^\n]*\n", "", body, flags=re.M)
        if d and decl_line is None:
            decl_line = d
        for mem in split_members(body):
            members.append((name, mem))
        used_files.append(name)

    lines = []
    if package:
        lines.append(f"package {package};")
        lines.append("")
    if imports:
        lines.extend(imports)
        lines.append("")
    if decl_line:
        # 补齐类声明末尾的 {（提取时大括号被当作类体起点切掉了）
        lines.append(decl_line.rstrip().rstrip("{").rstrip() + " {")
    else:
        lines.append(f"public final class {class_name} {{")
    lines.append("")

    last_file = None
    for name, mem in members:
        if name != last_file:
            lines.append(f"    // ==== from {name} ====")
            last_file = name
        indented = "\n".join("    " + ln if ln.strip() else "" for ln in mem.splitlines())
        lines.append(indented)
        lines.append("")
    lines.append("}")

    with open(out_path, "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(lines) + "\n")

    print(f"合并 {len(used_files)} 个 java 片段，{len(members)} 个类成员")
    print(f"输出: {out_path}")


if __name__ == "__main__":
    main()
