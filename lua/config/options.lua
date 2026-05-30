vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.env.PATH = vim.fn.expand("~/.local/bin") .. ":" .. vim.env.PATH

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

vim.opt.autoread = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.mapleader = " "
