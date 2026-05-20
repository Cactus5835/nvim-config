# Cactus's Neovim Config

*This repo is built on top of LazyVim defaults; this README only lists repo-specific customizations.*

This repository contains a modular Neovim configuration using Lazy.nvim and LazyVim.

## Custom plugins

| Plugin | Purpose |
|--------|---------|
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) + [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp), [cmp-buffer](https://github.com/hrsh7th/cmp-buffer), [cmp-path](https://github.com/hrsh7th/cmp-path), [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline), [LuaSnip](https://github.com/L3MON4D3/LuaSnip), [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | Completion setup with custom sources and completion keymaps. |
| [hop.nvim](https://github.com/smoka7/hop.nvim) | Fast in-screen navigation. |

## Custom features

| Feature | Summary |
|---------|---------|
| UI defaults | Enables line numbers, relative numbers, cursorline, and `colorcolumn=80`. |
| Indentation | Uses `tabstop=4`, `shiftwidth=0`, and `expandtab=true`. |
| Window behavior | New splits open below/right. |
| Environment | Prepends `~/.local/bin` to `$PATH`. |
| Leader key | Sets `<Space>` as `mapleader`. |
| Netrw disable | Disables built-in netrw and netrwPlugin. |

## Custom keymaps

| Keymap | Usage |
|--------|-------|
| `<C-h>` | Move to left split. |
| `<C-j>` | Move to split below. |
| `<C-k>` | Move to split above. |
| `<C-l>` | Move to right split. |
| `<C-z>` | Undo. |
| `<C-S-z>` | Redo. |
| `<leader>w` | Save file. |
| `<leader>q` | Close window. |
| `<leader>Q` | Quit all. |
| `<leader>x` | Save and close. |

## Custom plugin keymaps

### nvim-cmp

| Keymap | Usage |
|--------|-------|
| `<Tab>` | Select next completion item or jump forward in snippets. |
| `<S-Tab>` | Select previous completion item or jump backward in snippets. |
| `<C-e>` | Abort completion. |
| `<C-y>` | Confirm completion. |
| `/`, `?` | Enable buffer completion on search prompts. |
| `:` | Enable path and command-line completion. |

### hop.nvim

| Keymap | Usage |
|--------|-------|
| `<leader>hp` | Hop to a visible word. |

## Layout

| Path | Purpose |
|------|---------|
| `init.lua` | Entry point; loads core options, keymaps, autocmds, and Lazy bootstrapping. |
| `lua/config/options.lua` | Core editor options and environment setup. |
| `lua/config/keymaps.lua` | Custom keymaps. |
| `lua/config/autocmds.lua` | Placeholder for future autocmds. |
| `lua/config/lazy.lua` | Lazy.nvim bootstrap and defaults. |
| `lua/plugins/*.lua` | Repo-specific plugin overrides. |
