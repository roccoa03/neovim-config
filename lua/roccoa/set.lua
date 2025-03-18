vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.scrolloff = 8
--vim.opt.signcolumn = "no"
vim.opt.colorcolumn = "80"
-- utile per gestire gli split
vim.opt.mouse = "v"

vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.opt.spelllang="it,en"
vim.opt.spell = false


-- MARKER {{{
	-- <space> za key close a fold 
	-- <space> z key close a fold 
-- }}}
vim.opt.foldmethod = 'marker'
vim.opt.completeopt:append({'noinsert'})


vim.opt.showmode = false

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
