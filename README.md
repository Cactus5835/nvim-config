# Neovim Config

Plugin manager: [lazy.nvim](https://github.com/folke/lazy.nvim)

## Plugins

| Plugin | Purpose |
|--------|---------|
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Colorscheme |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Tab/buffer line |
| [hop.nvim](https://github.com/smoka7/hop.nvim) | Jump to any word on screen |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto-close brackets/quotes |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Surround text with quotes/brackets/tags |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP server installer |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Bridge mason ↔ lspconfig |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configs |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion engine |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | LSP completion source |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) | Buffer word completion |
| [cmp-path](https://github.com/hrsh7th/cmp-path) | Path completion |
| [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) | Cmdline completion |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | LuaSnip completion source |
| [nvim-spectre](https://github.com/nvim-pack/nvim-spectre) | Find & replace panel |

## Features

- **LSP**: Lua language server (`lua_ls`) via mason, auto-attaches to `.lua` files
- **Completion**: Popup autocompletion with LSP, buffer words, paths, snippets
- **File tree**: nvim-tree with case-sensitive sort, dotfiles hidden, grouped empty dirs
- **Find & replace**: Spectre panel with ripgrep backend
- **Hop**: Quick cursor navigation to any visible word
- **Surround**: `ys`, `ds`, `cs` to add/delete/change surrounding brackets/quotes/tags
- **Autopairs**: Auto-close `(`, `[`, `{`, `'`, `"`
- **Bufferline**: Tab-line with buffer navigation and close options
- **Colorscheme**: Tokyonight (moon)

## Keymaps

### LSP (buffer-local, auto-attached)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `K` | Hover documentation |
| `gO` | Go to implementation |
| `gr` | Find references |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>ca` | Code action |
| `<leader>rn` | Rename symbol |

### Completion (insert mode)

| Key | Action |
|-----|--------|
| `<Tab>` | Next item / expand snippet |
| `<S-Tab>` | Previous item / jump snippet |
| `<C-e>` | Abort completion |
| `<C-y>` | Confirm selection |

### File tree

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle file explorer |

### Find & replace

| Key | Action |
|-----|--------|
| `<leader>S` | Toggle Spectre panel |
| `<leader>sw` | Search word under cursor |

### Bufferline

| Key | Action |
|-----|--------|
| `<leader>bh` | Previous buffer |
| `<leader>bl` | Next buffer |
| `<leader>bd` | Delete buffer |
| `<leader>bo` | Close other buffers |
| `<leader>bp` | Pick buffer |
| `<leader>bc` | Pick buffer to close |

### Hop

| Key | Action |
|-----|--------|
| `<leader>hp` | Hop to word |

## Settings

| Option | Value |
|--------|-------|
| `number` + `relativenumber` | Hybrid line numbers |
| `cursorline` | Highlight current line |
| `colorcolumn` | `80` |
| `tabstop` | `4` |
| `expandtab` | Spaces instead of tabs |
| `shiftwidth` | Follows `tabstop` |
| `splitbelow` / `splitright` | New splits open right/below |
| `autoread` | Auto-reload files changed externally |
| `mapleader` | `<Space>` |
