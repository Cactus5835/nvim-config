# Neovim Config

This repository contains a modular Neovim configuration using lazy.nvim. Plugins live under lua/plugins and small core features live under lua/core.

Plugin manager: [lazy.nvim](https://github.com/folke/lazy.nvim)

## Plugins

| Plugin | Purpose |
|--------|---------|
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer/tabline with buffer management keymaps. |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) + [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp), [cmp-buffer](https://github.com/hrsh7th/cmp-buffer), [cmp-path](https://github.com/hrsh7th/cmp-path), [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline), [LuaSnip](https://github.com/L3MON4D3/LuaSnip), [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | Completion engine with LSP, buffer, path, cmdline, and snippet sources. |
| [hop.nvim](https://github.com/smoka7/hop.nvim) | Fast in-screen navigation. |
| [mason.nvim](https://github.com/williamboman/mason.nvim) + [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | LSP server installation and integration with lspconfig. |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client setup for `lua_ls`, `clangd`, and `pyright`. |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto-closing pairs in insert mode. |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Add/change/delete surrounding characters. |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Parser-based syntax and grammar highlighting with indentation. |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (+ [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)) | Fuzzy finder for files and project-wide text search. |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) (+ [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)) | File explorer sidebar with icons. |
| [yuyuko.vim](https://github.com/Enonya/yuyuko.vim) | Colorscheme applied on startup. |

## Custom features

| Feature | Summary |
|---------|---------|
| UI and editor defaults | Enables number + relativenumber, cursorline, colorcolumn (`80`), and autoread. |
| Indentation | Uses `tabstop=4`, `shiftwidth=0` (follow tabstop), and `expandtab=true`. |
| Window behavior | New splits open below/right (`splitbelow`, `splitright`). |
| Environment | Prepends `~/.local/bin` to `$PATH`. |
| Leader key | Sets `mapleader` to `<Space>`. |
| Keymap helper | Defines `map(mode, lhs, rhs, desc)` wrapper around `vim.keymap.set`. |
| Split navigation keymaps | `<C-h>`, `<C-j>`, `<C-k>`, `<C-l>`. |
| Editing keymaps | Undo/redo in normal+insert (`<C-z>`, `<C-S-z>`). |
| File action keymaps | `<leader>w` save, `<leader>q` quit, `<leader>x` save+quit. |

## Layout

- init.lua — entrypoint (requires core.basic and core.lazy)
- lua/plugins/*.lua — plugin specifications (lazy.nvim style)
- lua/core/*.lua — core settings and bootstrapping logic

## Features

- LSP: lua_ls, clangd, pyright via mason; buffer-local LSP keymaps are registered on LspAttach
- Completion: nvim-cmp with LSP, buffer, path, cmdline, and snippet support
- File tree: nvim-tree provides a sidebar explorer and opens on demand
- Search: Telescope file finder and live grep (`find_files`, `grep_string`, `live_grep`)

## Plugin keymaps summary

### [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)

| Keymap | Usage |
|--------|-------|
| `<leader>bh` | Cycle to previous buffer. |
| `<leader>bl` | Cycle to next buffer. |
| `<leader>bd` | Delete current buffer. |
| `<leader>bo` | Close all other buffers. |
| `<leader>bp` | Pick a buffer to switch to. |
| `<leader>bc` | Pick a buffer to close. |

### [hop.nvim](https://github.com/smoka7/hop.nvim)

| Keymap | Usage |
|--------|-------|
| `<leader>hp` | Hop to a visible word. |

### [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)

| Keymap | Usage |
|--------|-------|
| `<leader>e` | Toggle file tree panel. |

### [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

| Keymap | Usage |
|--------|-------|
| `<leader>S` | Live grep across the project. |
| `<leader>sw` | Search for the word under cursor. |
| `<leader>sf` | Find files with fuzzy matching. |

### [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

| Keymap | Usage |
|--------|-------|
| `gd` | Go to definition (buffer-local on `LspAttach`). |
| `K` | Show hover documentation (buffer-local on `LspAttach`). |
| `gr` | List references (buffer-local on `LspAttach`). |
| `[d` | Go to previous diagnostic (buffer-local on `LspAttach`). |
| `]d` | Go to next diagnostic (buffer-local on `LspAttach`). |
| `<leader>ca` | Trigger code action (buffer-local on `LspAttach`). |
| `<leader>rn` | Rename symbol (buffer-local on `LspAttach`). |
