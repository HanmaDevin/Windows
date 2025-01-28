vim.cmd("set tabstop=2")
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set showcmd")
vim.cmd("set smartcase")
vim.cmd("set smartindent")
vim.cmd("set nocompatible")
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>q", ":wqa!<CR>", {desc = "Quit"})
vim.keymap.set("n", "<leader>s", ":w<CR>", {desc = "Save"})
vim.keymap.set("n", "<leader>wa", ":wa<CR>", {desc = "Save All"})
