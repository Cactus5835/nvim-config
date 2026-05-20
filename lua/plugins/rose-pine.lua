return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  config = function()
    -- use Moon variant (Rosé Pine Moon) and apply the colorscheme
    vim.g.rose_pine_variant = "moon"
    vim.cmd([[colorscheme rose-pine]])
  end,
}
