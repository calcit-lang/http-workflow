# Use Action release tags / 使用 Action 发布标签

- Replace commit-hash Action references with the exact readable release tags `actions/checkout@v5.1.0` and `calcit-lang/setup-calcit@v1.4.0`.
- Verify both tags resolve to the same commits previously used by the workflow, so this changes representation without changing executed code.
- Keep the existing least-privilege permissions, disabled checkout credential persistence, strict Caps checks, and exact Calcit toolchain verification unchanged.
- No `setup-calcit` issue was opened because its published `v1.4.0` tag resolves correctly and the existing workflow run passed.

- 将以提交 hash 表示的 Action 引用替换为明确可读的发布标签 `actions/checkout@v5.1.0` 和 `calcit-lang/setup-calcit@v1.4.0`。
- 已确认两个标签分别解析到工作流此前使用的相同提交，因此只改变版本表达方式，不改变实际执行代码。
- 保持最小权限、禁用 checkout 凭据持久化、严格 Caps 检查以及精确 Calcit 工具链验证不变。
- `setup-calcit` 的 `v1.4.0` 发布标签解析正常，且现有工作流已经通过，因此无需提交上游 issue。
