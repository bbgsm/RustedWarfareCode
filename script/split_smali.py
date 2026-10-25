#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
smali 按方法拆分工具

传入一个 .smali 文件，把其中每个方法单独拆分成一个文件，
输出目录为项目根目录下的 out/<smali文件名(去扩展名)>/<方法签名>.smali。

类头部（.class/.super/.field 等全局变量指令）不重复写入每个方法文件，
而是单独输出为目录下的 __header__.smali。

用法:
    python split_smali.py path/to/File.smali
    python split_smali.py path/to/File.smali -o out
    python split_smali.py path/to/File.smali --with-header  # 兼容旧行为：头部复制进每个方法文件
"""

import argparse
import os
import re
import sys
import zlib

METHOD_START_RE = re.compile(r'^\.method\b')
METHOD_END_RE = re.compile(r'^\.end\s+method\b')
# 从方法声明行提取 名称(描述符)返回类型，如 "public static a(II)V" -> a(II)V
METHOD_SIG_RE = re.compile(r'([\w$<>]+)\((.*)\)(\S+)')
ILLEGAL_FS_RE = re.compile(r'[<>:"/\\|?*]')
# 文件名主体最大长度，超出则截断并加哈希后缀，避免触发 Windows 路径长度限制
MAX_NAME_LEN = 120
PRIMITIVE_TYPES = set('BCDFIJSVZ')


def parse_smali(text):
    """把 smali 文本拆成 (头部行列表, [(方法名标识, 方法文本行列表), ...])。

    头部 = 类级别指令（.class/.super/.source/.field/类注解等）。
    """
    lines = text.splitlines(keepends=True)
    header = []
    methods = []
    current = None          # 当前方法 (sig_id, [lines])
    in_method = False
    in_annotation = False   # 方法/类注解块，避免误判其中的内容

    for line in lines:
        stripped = line.strip()

        if not in_method:
            # 类头部区域
            if METHOD_START_RE.match(stripped):
                in_method = True
                sig_id = method_identifier(stripped)
                current = (sig_id, [line])
                continue
            if stripped.startswith('.annotation'):
                in_annotation = True
            elif in_annotation and stripped.startswith('.end annotation'):
                in_annotation = False
            header.append(line)
        else:
            current[1].append(line)
            if not in_annotation:
                if stripped.startswith('.annotation'):
                    in_annotation = True
                elif stripped.startswith('.end annotation'):
                    in_annotation = False
                elif METHOD_END_RE.match(stripped):
                    methods.append(current)
                    current = None
                    in_method = False
                    in_annotation = False

    if in_method and current is not None:
        # 文件结尾缺少 .end method（异常文件），仍把残留方法输出
        methods.append(current)
    return header, methods


def _shorten_type(desc, i):
    """从 desc[i] 开始读一个类型，返回 (简写, 下一个位置)。

    基本类型原样保留；类描述符只取简单类名，如 Lcom/.../b1019; -> b1019；
    数组用前缀 A，如 [Lcom/.../ag10; -> Aag10。
    """
    array = ''
    while i < len(desc) and desc[i] == '[':
        array += 'A'
        i += 1
    if i < len(desc):
        c = desc[i]
        if c in PRIMITIVE_TYPES:
            return array + c, i + 1
        if c == 'L':
            j = desc.find(';', i)
            if j >= 0:
                simple = desc[i + 1:j].rsplit('/', 1)[-1]
                return array + simple, j + 1
    # 无法识别，原样返回剩余部分
    return array + desc[i:], len(desc)


def _shorten_descriptor(desc):
    """把参数/返回描述符转成简写，如 Lcom/A/I; -> String_InputStream_I。"""
    parts = []
    i = 0
    while i < len(desc):
        t, i = _shorten_type(desc, i)
        parts.append(t)
    return '_'.join(parts) if parts else 'void'


def method_identifier(decl_line):
    """由方法声明行生成简写标识，如 'a(String_InputStream_b1019)o1350'。"""
    m = METHOD_SIG_RE.search(decl_line)
    if m:
        name = m.group(1)
        params = _shorten_descriptor(m.group(2))
        ret = _shorten_descriptor(m.group(3))
        sig = '{}({}){}'.format(name, params, ret)
    else:
        # 兜底：用整行清洗后的文本
        sig = ILLEGAL_FS_RE.sub('_', decl_line).strip('.# ').replace(' ', '_') or 'method'
    if len(sig) > MAX_NAME_LEN:
        digest = format(zlib.crc32(sig.encode('utf-8')), '08x')
        sig = '{}_{}'.format(sig[:MAX_NAME_LEN - 10], digest)
    return sig


def method_filename(sig_id):
    """把方法签名简写转成合法文件名。"""
    return ILLEGAL_FS_RE.sub('_', sig_id) + '.smali'


def split_file(path, out_root, with_header=False):
    with open(path, 'r', encoding='utf-8', errors='replace') as f:
        text = f.read()

    header, methods = parse_smali(text)
    base = os.path.splitext(os.path.basename(path))[0]
    out_dir = os.path.join(out_root, base)
    os.makedirs(out_dir, exist_ok=True)

    header_text = ''.join(header)
    # 压缩头部中因方法被拆走而残留的连续空行
    header_text = re.sub(r'\n{3,}', '\n\n', header_text)
    written = []
    used_names = set()

    # 类头部（全局变量等）单独输出一个文件
    if not with_header:
        if header_text.strip():
            out_path = os.path.join(out_dir, '__header__.smali')
            with open(out_path, 'w', encoding='utf-8', newline='') as f:
                f.write(header_text if header_text.endswith('\n')
                        else header_text + '\n')
            written.append(os.path.basename(out_path))
        header_text = ''

    for sig_id, body_lines in methods:
        name = method_filename(sig_id)
        # 极少数情况下清洗后可能重名，追加序号
        idx = 1
        while name in used_names:
            idx += 1
            name = '{}_{:d}.smali'.format(ILLEGAL_FS_RE.sub('_', sig_id), idx)
        used_names.add(name)

        content = header_text + ''.join(body_lines)
        if not content.endswith('\n'):
            content += '\n'
        out_path = os.path.join(out_dir, name)
        with open(out_path, 'w', encoding='utf-8', newline='') as f:
            f.write(content)
        written.append(name)

    # 若类只有头部没有方法，上面已输出 __header__.smali
    return out_dir, written


def main():
    parser = argparse.ArgumentParser(description='按方法拆分 smali 文件')
    parser.add_argument('smali_file', help='要解析的 .smali 文件路径')
    parser.add_argument('-o', '--out', default='out',
                        help='输出根目录（默认: 项目根目录下的 out）')
    parser.add_argument('--with-header', action='store_true',
                        help='把类头部复制进每个方法文件（旧行为），默认单独输出 __header__.smali')
    args = parser.parse_args()

    if not os.path.isfile(args.smali_file):
        print('错误: 文件不存在: %s' % args.smali_file, file=sys.stderr)
        sys.exit(1)

    # 输出根目录默认相对脚本所在目录（项目根目录）
    out_root = args.out
    if not os.path.isabs(out_root):
        project_root = os.path.dirname(os.path.abspath(__file__))
        out_root = os.path.join(project_root, out_root)

    out_dir, files = split_file(args.smali_file, out_root,
                                with_header=args.with_header)
    print('已拆分 %d 个方法 -> %s' % (len(files), out_dir))
    for name in files:
        print('  ' + name)


if __name__ == '__main__':
    main()
