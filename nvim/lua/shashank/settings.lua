vim.opt.compatible     = false
vim.opt.number         = true
vim.opt.guicursor      = ""
vim.opt.relativenumber = true
vim.opt.tabstop        = 4
vim.opt.shiftwidth     = 4
vim.opt.softtabstop    = 4
vim.opt.expandtab      = true
vim.opt.swapfile       = false
vim.opt.clipboard      = "unnamedplus"
vim.opt.smartindent    = true
vim.opt.wrap           = false
vim.opt.undodir        = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile       = true
vim.opt.hlsearch       = false
vim.opt.incsearch      = true
vim.opt.termguicolors  = true
vim.opt.scrolloff      = 8
vim.opt.signcolumn     = "yes"
vim.opt.cursorline     = true
vim.g.mapleader        = " "
vim.g.maplocalleader   = " "
vim.opt.updatetime     = 50
vim.opt.colorcolumn    = "1000"
vim.opt.termguicolors  = true
vim.g.vimwiki_list     = { { path = '~/vimwiki/', syntax = 'markdown', ext = '.md' } }
vim.cmd('colorscheme carbonfox')
