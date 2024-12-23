local opt = vim.opt
local g = vim.g

-- recommendation from nvim-tree
-- disable netrw at the very start of your init.lua
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

opt.termguicolors = true
opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.encoding = "utf-8"
opt.spelllang = 'en_us'
opt.spell = true

opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2
vim.o.breakindent = true

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true
opt.showbreak = "  ↳"

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

g.mapleader = " "
