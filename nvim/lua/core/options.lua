local g = vim.g
local opt = vim.opt

vim.scriptencoding = 'utf-8'

opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.swapfile = false
opt.number = true
opt.backup = false
opt.hlsearch = true
opt.showcmd = true
opt.relativenumber = true
opt.termguicolors = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smarttab = true
opt.breakindent = true
opt.wrap = false
opt.cursorline = true
opt.autoindent = true
opt.smartindent = true
opt.copyindent = true
opt.hidden = true
opt.wildmenu = true
opt.showmatch = true
opt.autochdir = true
opt.background = 'dark'
vim.cmd([[colorscheme tokyonight]])
