local function map(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { desc = desc })
end

map("n", "<C-z>", "u", "Undo")
map("n", "<C-S-z>", "<C-r>", "Redo")
map("i", "<C-z>", "<C-o>u", "Undo")
map("i", "<C-S-z>", "<C-o><C-r>", "Redo")

map("n", "<leader>Q", ":qa<CR>", "Quit all")
