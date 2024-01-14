local opt = vim.opt

-- opt.guicursor = ""
opt.relativenumber = true

-- Searching 
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Indenting
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.autoindent = true
opt.expandtab = false

-- Window layout

opt.cursorline = true
opt.colorcolumn = "80"
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.termguicolors = true

-- Quality of life

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.updatetime = 50
