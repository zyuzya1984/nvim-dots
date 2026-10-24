vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cmdheight = 1
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.wrap = false
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true
vim.opt.fillchars = ({ eob = " " })

vim.diagnostic.config({
 signs = false,
 virtual_text = true
})

vim.deprecate = function() end
