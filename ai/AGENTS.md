# wl_AGENTS.md

- `~/Dev/` 是工作目录，包含工作涉及的所有仓库。
- 修改仓库代码时使用Git worktree，若当前目录已是合适的worktree，直接使用。
- 新建的worktree放在对应仓根目录下的`.worktrees/`。
- 工作时产生的中间文件放在各自worktree的`intermediates/`。
- 确保`.worktrees/` 和 `intermediates/` 不会被意外提交。
