vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Oil)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {noremap = true})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { desc = 'List implementations' })

--#region plugin dependant

-- vim.keymap.set('n', '<leader>gi', function()
--     require('telescope.builtin').lsp_implementations()
-- end, { desc = 'List implementations' })

--#endregion
