vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.env.PATH = vim.fn.expand("~/.local/bin") .. ":" .. vim.env.PATH

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
vim.opt.expandtab = true

vim.opt.autoread = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.mapleader = " "

local function map(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { desc = desc })
end

map("n", "<C-h>", "<C-w>h", "Move to left split")
map("n", "<C-j>", "<C-w>j", "Move to split below")
map("n", "<C-k>", "<C-w>k", "Move to split above")
map("n", "<C-l>", "<C-w>l", "Move to right split")

map("n", "<leader>w", ":w<CR>", "Save file")
map("n", "<leader>q", ":q<CR>", "Close window")
map("n", "<leader>x", ":x<CR>", "Save and close")
