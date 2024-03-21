--Add all vim related settings here. NOT IDE RELATED.

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.g.mapleader = " "

return {
  ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
  ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
  ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
}
