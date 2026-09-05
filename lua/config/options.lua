-- Shell (fix using the wrong flags.)
vim.o.shell = "C:\\msys64\\usr\\bin\\zsh.exe"
vim.o.shellcmdflag = "-c"
vim.o.shellquote = ""
vim.o.shellxquote = ""
vim.o.shellredir = ">%s 2>&1"
vim.o.shellpipe = "2>&1 | tee %s"

-- Editor looks
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.scrolloff = 8

vim.opt.incsearch = true

vim.opt.showcmdloc = "statusline"

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

vim.opt.foldcolumn = "1"

-- Diagnostic
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
