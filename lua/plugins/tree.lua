return {
  {
    "nvim-tree/nvim-tree.lua",
    tag = "compat-nvim-0.9",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file tree" },
    },
    config = function()
      require("nvim-tree").setup({
        sort = { sorter = "case_sensitive" },
        view = { width = 30 },
        renderer = { group_empty = true },
        filters = { dotfiles = true },
      })
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          vim.cmd("NvimTreeOpen")
        end,
        nested = true,
      })
    end,
  },
}
