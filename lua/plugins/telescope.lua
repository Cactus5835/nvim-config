return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>S", "<cmd>Telescope live_grep<CR>", desc = "Search in project" },
      { "<leader>sw", "<cmd>Telescope grep_string<CR>", desc = "Search current word" },
      { "<leader>sf", "<cmd>Telescope find_files<CR>", desc = "Search files" },
    },
    config = function()
      require("telescope").setup({})
    end,
  },
}
