# nvim-config

LazyVim-based Neovim configuration.

## Structure

| Path | Purpose |
|------|---------|
| `init.lua` | Entry point; loads `config.*` then lazy.nvim imports `plugins` |
| `lua/config/` | Core options (`options.lua`), keymaps (`keymaps.lua`), lazy bootstrap (`lazy.lua`), autocmds (placeholder) |
| `lua/plugins/` | Custom plugin configs: `cmp.lua`, `hop.lua`, `rose-pine.lua` |
| `stylua.toml` | Formatter: 2-space indent, 120 column width |

## Workflow

- **Format**: `stylua .` (2-space indent, 120 cols)
- **Sync after every change**: `./sync-nvim-config.sh` — rsyncs repo to `~/.config/nvim`
- **Update README.md** when adding/modifying features or keymaps (required by `.github/copilot-instructions.md`)
- **Committed files only**: no generated artifacts; `lazy-lock.json` is gitignored

## Syncing

`./sync-nvim-config.sh` copies the entire repo (excluding `.git/` and `.github/`) to `~/.config/nvim` with `--delete`. Run it after every change you want to test.
