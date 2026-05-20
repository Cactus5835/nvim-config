local function map(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { desc = desc })
end

map("n", "<C-h>", "<C-w>h", "Move to left split")
map("n", "<C-j>", "<C-w>j", "Move to split below")
map("n", "<C-k>", "<C-w>k", "Move to split above")
map("n", "<C-l>", "<C-w>l", "Move to right split")
map("n", "<C-z>", "u", "Undo")
map("n", "<C-S-z>", "<C-r>", "Redo")
map("i", "<C-z>", "<C-o>u", "Undo")
map("i", "<C-S-z>", "<C-o><C-r>", "Redo")

map("n", "<leader>w", ":w<CR>", "Save file")
map("n", "<leader>q", ":q<CR>", "Close window")
map("n", "<leader>Q", ":qa<CR>", "Quit all")
map("n", "<leader>x", ":x<CR>", "Save and close")
