return {
	"johmsalas/text-case.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("textcase").setup({
			default_keymappings_enabled = false,
		})

		pcall(function()
			require("telescope").load_extension("textcase")
		end)

		vim.api.nvim_set_keymap("n", "g.", "<cmd>TextCaseOpenTelescopeLSPChange<CR>", { desc = "LSP Text Case Rename" })
		vim.api.nvim_set_keymap("v", "g.", "<cmd>TextCaseOpenTelescopeLSPChange<CR>", { desc = "LSP Text Case Rename" })
	end,
}
