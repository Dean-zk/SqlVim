vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
local g = vim.g

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- set cursor line
opt.cursorline = false

-- Turn of swap file
opt.swapfile = false

-- Toggle theme
g.toggle_theme_icon = "   "
