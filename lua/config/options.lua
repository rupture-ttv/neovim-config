vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set scl=no")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set nowrap")

vim.g.mapleader = " "

vim.cmd("autocmd FileType cs setlocal commentstring=//\\ %s")
