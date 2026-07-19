vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Oil)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {noremap = true})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
