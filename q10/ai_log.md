核心提示：修复 q10 中空白 name 仍被接受的问题，要求最小修改、不改测试和其他题目，并运行 pytest q10/test_cli.py -q。
智能体改动：仅修改 q10/src/greetlab/cli.py，增加空白姓名检查，并通过 p.error() 以 SystemExit(2) 结束。
人工验证：检查 q09 与 q10 的 cli.py diff，确认无无关修改；再次运行 pytest q10/test_cli.py -q，结果为 1 passed。