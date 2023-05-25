-- disable netrw at the start
-- prevents race conditions with nvimtree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Line and Relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Identation settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Highlights all text that matches
vim.opt.hlsearch = true

-- Highlights while typeing search terms
vim.opt.incsearch = true

-- Changes highlight color for visibility
vim.cmd('hi IncSearch guibg=#d75f00 guifg=white')

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Leader key remap
vim.g.mapleader = " "

