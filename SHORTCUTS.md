# Neovim Shortcuts

`<leader>` = `Space`

---

## General

| Key | Action |
|-----|--------|
| `jk` | Exit insert mode |
| `<leader>nh` | Clear search highlights |
| `<leader>+` | Increment number |
| `<leader>-` | Decrement number |

---

## File Explorer (nvim-tree)

| Key | Action |
|-----|--------|
| `<leader>ee` | Toggle file explorer |
| `<leader>ef` | Toggle explorer on current file |
| `<leader>ec` | Collapse file explorer |
| `<leader>er` | Refresh file explorer |

---

## Window / Split Management

| Key | Action |
|-----|--------|
| `<leader>sv` | Split vertically |
| `<leader>sh` | Split horizontally |
| `<leader>se` | Make splits equal size |
| `<leader>sx` | Close current split |
| `<leader>sm` | Maximize / minimize split |

---

## Tab Management

| Key | Action |
|-----|--------|
| `<leader>to` | Open new tab |
| `<leader>tx` | Close current tab |
| `<leader>tn` | Next tab |
| `<leader>tp` | Previous tab |
| `<leader>tf` | Open current buffer in new tab |

---

## Telescope (Fuzzy Finder)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files in cwd |
| `<leader>fr` | Find recent files |
| `<leader>fs` | Live grep (find string) in cwd |
| `<leader>fc` | Find string under cursor in cwd |
| `<leader>ft` | Find TODO comments |
| `<leader>fk` | Find keymaps |

### Inside Telescope

| Key | Action |
|-----|--------|
| `<C-k>` | Move to previous result |
| `<C-j>` | Move to next result |
| `<C-q>` | Send selected to quickfix list |
| `<C-t>` | Open in Trouble |

---

## LSP (Go / TypeScript / Dart)

| Key | Action |
|-----|--------|
| `gR` | Show LSP references (Telescope) |
| `gD` | Go to declaration |
| `gd` | Go to definition |
| `gi` | Show implementations (Telescope) |
| `gt` | Show type definitions (Telescope) |
| `K` | Show hover documentation |
| `<leader>ca` | Code actions (normal / visual) |
| `<leader>rn` | Smart rename |
| `<leader>D` | Show buffer diagnostics (Telescope) |
| `<leader>d` | Show line diagnostics (float) |
| `[d` | Go to previous diagnostic |
| `]d` | Go to next diagnostic |
| `<leader>rs` | Restart LSP |

---

## Formatting & Linting

| Key | Action |
|-----|--------|
| `<leader>mp` | Format file / range (visual) |
| `<leader>l` | Trigger linting for current file |

---

## Git (gitsigns)

| Key | Action |
|-----|--------|
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hR` | Reset buffer |
| `<leader>hu` | Undo stage hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line (full) |
| `<leader>hB` | Toggle line blame |
| `<leader>hd` | Diff this |
| `<leader>hD` | Diff this ~ |
| `ih` (visual/operator) | Select hunk text object |

## LazyGit

| Key | Action |
|-----|--------|
| `<leader>lg` | Open LazyGit |

---

## Trouble (Diagnostics List)

| Key | Action |
|-----|--------|
| `<leader>xw` | Workspace diagnostics |
| `<leader>xd` | Document diagnostics |
| `<leader>xq` | Quickfix list |
| `<leader>xl` | Location list |
| `<leader>xt` | TODOs in trouble |

---

## TODO Comments

| Key | Action |
|-----|--------|
| `]t` | Next TODO comment |
| `[t` | Previous TODO comment |

---

## Completion (nvim-cmp)

| Key | Action |
|-----|--------|
| `<C-k>` | Select previous suggestion |
| `<C-j>` | Select next suggestion |
| `<C-b>` | Scroll docs up |
| `<C-f>` | Scroll docs down |
| `<C-Space>` | Trigger completion |
| `<C-e>` | Abort completion |
| `<CR>` | Confirm selection |

---

## Surround (nvim-surround)

| Key | Action |
|-----|--------|
| `ys{motion}{char}` | Add surround (e.g. `ysiw"`) |
| `ds{char}` | Delete surround (e.g. `ds"`) |
| `cs{old}{new}` | Change surround (e.g. `cs'"`) |
| `S{char}` (visual) | Surround selection |

---

## Substitute (substitute.nvim)

| Key | Action |
|-----|--------|
| `<leader>r{motion}` | Substitute with motion |
| `<leader>rr` | Substitute line |
| `<leader>R` | Substitute to end of line |
| `<leader>r` (visual) | Substitute visual selection |

---

## Treesitter Text Objects

### Select

| Key | Action |
|-----|--------|
| `a=` / `i=` | Outer / inner assignment |
| `l=` / `r=` | LHS / RHS of assignment |
| `a:` / `i:` | Outer / inner object property (JS/TS) |
| `l:` / `r:` | LHS / RHS of object property |
| `aa` / `ia` | Outer / inner parameter |
| `ai` / `ii` | Outer / inner conditional |
| `al` / `il` | Outer / inner loop |
| `af` / `if` | Outer / inner function call |
| `am` / `im` | Outer / inner method/function def |
| `ac` / `ic` | Outer / inner class |

### Swap

| Key | Action |
|-----|--------|
| `<leader>na` | Swap parameter with next |
| `<leader>pa` | Swap parameter with previous |
| `<leader>nm` | Swap function with next |
| `<leader>pm` | Swap function with previous |
| `<leader>n:` | Swap object property with next |
| `<leader>p:` | Swap object property with previous |

### Move to code block

| Key | Action |
|-----|--------|
| `]f` / `[f` | Next / prev function call start |
| `]F` / `[F` | Next / prev function call end |
| `]m` / `[m` | Next / prev method def start |
| `]M` / `[M` | Next / prev method def end |
| `]c` / `[c` | Next / prev class start |
| `]i` / `[i` | Next / prev conditional start |
| `]l` / `[l` | Next / prev loop start |
| `]s` | Next scope |
| `]z` | Next fold |

### Repeat motion

| Key | Action |
|-----|--------|
| `;` | Repeat last move (forward) |
| `,` | Repeat last move (backward) |

---

## Session (auto-session)

| Key | Action |
|-----|--------|
| `<leader>wr` | Restore session for cwd |
| `<leader>ws` | Save session for cwd |

---

## Tmux Navigation (vim-tmux-navigator)

| Key | Action |
|-----|--------|
| `<C-h>` | Navigate to left pane |
| `<C-j>` | Navigate to lower pane |
| `<C-k>` | Navigate to upper pane |
| `<C-l>` | Navigate to right pane |
