# Issue

环境：Windows；Python 版本：待确认。  
复现命令：`sdt-greet --name " "`  
期望结果：拒绝仅包含空白字符的姓名，并以退出码 2 结束。  
实际结果：程序输出 `Hello, !`，并以退出码 0 结束。

# Commit Message

Reject blank names in CLI

Validate the `--name` argument after trimming whitespace. Reject blank input with an argument error so the command exits with code 2.

# Review

**Blocking**：当前实现仍接受仅含空白字符的姓名，可能导致无效输入被当作正常数据处理。建议在参数解析后检查 `name.strip()`，为空时通过参数错误结束，并补充对应测试。