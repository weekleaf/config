# wl.nvim
## Prerequisites
- **Neovim** ≥ 0.10 (recommended: 0.11+)
- **Git**
- **A Nerd Font** (for icons)
- **Node.js** (for LSP servers)
- **ripgrep** (for telescope grep)

## Keymaps

> Leader = `Space`. Modes: `n` normal, `i` insert, `v` visual/select, `x` visual, `o` operator-pending, `c` command-line, `t` terminal.

### General

| Key | Mode | Action |
| --- | --- | --- |
| `<Esc>` | n | Clear search highlight |
| `;` | n | Use `;` as `:` |
| `jk` | i | Exit insert mode (`<Esc>`) |
| `jk` / `<Esc><Esc>` | t | Exit terminal mode |
| `tn` | n | New tab |
| `tj` | n | Next tab |
| `tk` | n | Previous tab |
| `tc` | n | Close tab |
| `gt` / `gT` | n | Next / previous tab (Neovim built-in) |
| `{count}gt` | n | Go to tab number `{count}` (Neovim built-in) |
| `<leader>?` | n | Show buffer-local keymaps (which-key) |

### Terminal (toggleterm)

| Key | Mode | Action |
| --- | --- | --- |
| `<C-s>` | n, t | Toggle floating terminal |

### Telescope (search)

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>sf` | n | Find files |
| `<leader>sg` | n | Live grep |
| `<leader>sb` | n | List buffers |
| `<leader>sh` | n | Help tags |

### Neo-tree (file explorer)

| Key | Mode | Action |
| --- | --- | --- |
| `<C-e>` | n | Reveal / toggle file tree |
| `o` | tree | Open file |
| `<C-e>` | tree | Close window |
| `c` | tree | Mark file or directory to copy with `p` |
| `y` | tree | Copy file or directory name to the system clipboard |
| `Y` | tree | Copy full path to the system clipboard |

### Snacks Dashboard

| Key | Mode | Action |
| --- | --- | --- |
| `f` | dashboard | Find file with Telescope |
| `n` | dashboard | Create a new buffer and enter insert mode |
| `g` | dashboard | Find text with Telescope live grep |
| `r` | dashboard | Open a recent file |
| `c` | dashboard | Find a file in the Neovim config directory |
| `L` | dashboard | Open Lazy.nvim |
| `q` | dashboard | Quit Neovim |

### Snacks Scope

| Key | Mode | Action |
| --- | --- | --- |
| `[i` | n | Jump to the top edge of the current scope |
| `]i` | n | Jump to the bottom edge of the current scope |
| `ii` | o/x | Inner-scope text object, for example `dii`, `cii`, or `vii` |
| `ai` | o/x | Full-scope text object, for example `dai`, `cai`, or `vai` |

### Flash (motion)

| Key | Mode | Action |
| --- | --- | --- |
| `s` | n/x/o | Flash jump |
| `S` | n/x/o | Flash Treesitter |
| `r` | o | Remote Flash |
| `R` | o/x | Treesitter search |
| `<C-s>` | c | Toggle Flash search |

### Gitsigns

| Key | Mode | Action |
| --- | --- | --- |
| `]c` | n | Jump to the next Git hunk (native next change in diff mode) |
| `[c` | n | Jump to the previous Git hunk (native previous change in diff mode) |
| `<leader>hs` | n | Stage the current hunk (unstage when used on a staged sign) |
| `<leader>hs` | v | Stage the selected lines |
| `<leader>hr` | n | Reset the current hunk |
| `<leader>hr` | v | Reset the selected lines |
| `<leader>hS` | n | Stage every hunk in the current buffer |
| `<leader>hu` | n | Stage/unstage the current hunk (same configured action as `<leader>hs`) |
| `<leader>hR` | n | Reset every hunk in the current buffer |
| `<leader>hp` | n | Preview the current hunk in a floating window |
| `<leader>hb` | n | Show blame for the current line |
| `<leader>hd` | n | Diff the current file against the Git index |
| `<leader>hD` | n | Diff the current file against `HEAD` |
| `<leader>tb` | n | Toggle current-line blame |
| `<leader>tD` | n | Preview the current hunk inline |

> `<leader>hr` and `<leader>hR` discard unstaged changes in their target range.

### Neogit

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>ng` | n | Open the Neogit status UI |
| `j` / `k` | Neogit | Move between status items |
| `<Tab>` | Neogit | Expand or collapse the item at the cursor |
| `s` / `S` / `<C-s>` | Neogit | Stage item / all unstaged / everything |
| `u` / `U` | Neogit | Unstage item / everything staged |
| `x` | Neogit | Discard the item at the cursor after confirmation |
| `c` | Neogit | Open the commit popup |
| `p` / `P` | Neogit | Open the pull / push popup |
| `<CR>` | Neogit | Open the file at the cursor |
| `q` | Neogit | Close the status UI |

### LSP & Diagnostics

| Key | Mode | Action |
| --- | --- | --- |
| `K` | n | Hover documentation |
| `<leader>d` | n | Show diagnostic (float) |
| `<leader>q` | n | Diagnostics → location list |
| `]d` / `[d` | n | Jump to the next / previous diagnostic |
| `grn` | n | Rename symbol |
| `gra` | n/x | Show code actions |
| `grr` | n | Find references |
| `gri` | n | Go to implementation |
| `grt` | n | Go to type definition |
| `gO` | n | List document symbols |
| `<C-]>` | n | Go to definition through the LSP-backed Tag function |

### Completion (blink.cmp, `default` preset)

| Key | Mode | Action |
| --- | --- | --- |
| `<C-space>` | i | Open menu / show docs |
| `<C-n>` / `<C-p>` | i | Select next / previous item |
| `<Down>` / `<Up>` | i | Select next / previous item |
| `<C-y>` | i | Accept |
| `<C-e>` | i | Hide menu |
| `<C-b>` / `<C-f>` | i | Scroll documentation up / down |
| `<C-k>` | i | Signature help (falls back while signature help is disabled) |

### Supermaven (inline suggestions)

| Key | Mode | Action |
| --- | --- | --- |
| `<Tab>` | i | Accept suggestion |
| `<C-j>` | i | Accept word |
| `<C-]>` | i | Clear suggestion |

### Claude Code (`<leader>a`)

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>ac` | n | Toggle Claude (with `--dangerously-skip-permissions`) |
| `<leader>af` | n | Focus Claude |
| `<leader>ar` | n | Resume Claude |
| `<leader>aC` | n | Continue Claude |
| `<leader>am` | n | Select model |
| `<leader>ab` | n | Add current buffer |
| `<leader>as` | v | Send selection to Claude |
| `<leader>as` | tree | Add file to Claude |
| `<leader>aa` | n | Accept diff |
| `<leader>ad` | n | Deny diff |
