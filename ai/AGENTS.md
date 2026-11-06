# wl_AGENTS.md

- `~/Dev/` 是工作目录，放的是工作涉及的仓库，不要将无关文件或无关文件夹放进该路径，保持整洁。
- 修改仓库代码先询问用户是否使用Git worktree，如果已有合适的worktree，直接使用。
- 新建的worktree放在对应仓根目录下的`.worktrees/`。
- 使用worktree时，中间文件放在worktree根目录的`intermediates/`。
- 不使用worktree时，在系统临时目录下新建独立目录，中间文件放该目录。
- 确保`.worktrees/` 和 `intermediates/` 不会被意外提交。

## 文档

- 文档是给人阅读和理解的，不只是信息的存储载体。
  - 尊重读者的注意力，避免冗长铺垫、过度解释和无意义细节。
  - 每篇文档保持独立，上下文自足。
  - 禁止引用本地路径。

## 开发

- 默认使用git merge集成分支、同步上游，而不是rebase。
