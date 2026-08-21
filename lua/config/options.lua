vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.scrolloff = 8

vim.opt.incsearch = true

vim.opt.showcmdloc = "statusline"

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
