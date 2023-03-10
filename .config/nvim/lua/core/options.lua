local opt = vim.opt
local api = vim.api

opt.laststatus = 3
opt.showmode = false

opt.title = true
opt.clipboard = "unnamedplus"
opt.cursorline = true

opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

opt.number = false
opt.ruler = false

opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

opt.updatetime = 250

opt.whichwrap:append "<>[]hl"

vim.cmd[[
	au VimLeave * set guicursor=a:ver50-blinkon1
  au FileType alpha set laststatus=0 | au BufUnload <buffer> set laststatus=3
]]
