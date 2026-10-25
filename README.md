# RustedWarfareCode
### Rusted Warfare(铁锈战争1.15) 安卓反编译项目 
 - 所有资源以及代码均反编译出来，可导入IDEA进行编译
 - java 代码部分通过jadx反编译后再经过手动初步修复可编译，任然存在部分代码jadx 不能反编译的或者 反编译逻辑有问题的，在代码中已打上 “待定” 字样，可搜索定位查看，待定部分都需要人工翻译成java，smali代码在项目根路径/smali中
 - 现在有AI加持已经反编译到启动游戏界面，游戏合核心功能还需要继续反编译，奈何token不够，后期慢慢反编译。
 - 如果你想自己反编译，见下方「AI 反编译流水线」。

## AI 反编译流水线（smali -> Java）

把单个 `.smali` 文件反编译成一个完整的 `.java` 类，全流程分三步，已合并为一个脚本一键跑完：

1. **拆分 smali** —— 按方法把一个 `.smali` 拆成 `__header__.smali`（类头 + 字段）+ 每个方法一个 `.smali`
2. **AI 反编译** —— 目录内每个 `.smali` 片段调用大模型转成同名 `.java`（真流式：实时打印 + 边收边写文件）
3. **合并 java** —— 把目录内 java 碎片剥壳、去重、按序拼接为一个完整类 `<类名>_merged.java`

脚本位于 `script/` 目录，依赖 `openai` 包（`pip install openai`）。API 地址、`API_KEY`、默认模型在 `script/smali2ai.py` 顶部的**配置区**直接修改。

### 一键跑全流程

```powershell
cd script
# 拆分 -> AI 反编译 -> 合并，结果输出到 out/<文件名>/<文件名>_merged.java
python smali_pipeline.py ..\smali\com\corrodinggames\rts\appFramework\GameViewThreaded.smali
```

### 常用参数

| 参数 | 说明 |
| --- | --- |
| `-o out` | 输出根目录（默认脚本目录下的 `out`） |
| `-m <模型>` | 指定模型（默认取 `smali2ai.py` 配置区的 `MODEL`） |
| `-f` | 覆盖已存在的 `.java` 片段（默认跳过，便于断点续跑） |
| `--retry <n>` | 单文件失败重试次数（默认 3） |
| `-c <类名>` | 合并后的类名（默认取 smali 文件名） |
| `--skip-split` | 目录已拆好，只做反编译 + 合并 |
| `--skip-convert` | 跳过 AI 反编译（未装 openai 也能跑拆分 + 合并） |
| `--skip-merge` | 只拆分 + 反编译，不合并 |

```powershell
# 已拆分过，重跑反编译并覆盖旧 java，再合并
python smali_pipeline.py ..\smali\...\ag500.smali --skip-split -f

# java 片段已生成，只重新合并
python smali_pipeline.py ..\smali\...\ag500.smali --skip-split --skip-convert
```

### 三个分步脚本（仍可单独使用）

```powershell
python split_smali.py  path/to/ag500.smali              # 第 1 步：拆分
python smali2ai.py     -d out/ag500                     # 第 2 步：AI 反编译
python merge_java.py   -d out/ag500                     # 第 3 步：合并
```

