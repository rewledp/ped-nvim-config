return {
	"stevearc/aerial.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("aerial").setup({
			on_attach = function(bufnr)
				vim.keymap.set("n", "[a", "<cmd>AerialPrev<CR>", { buffer = bufnr })
				vim.keymap.set("n", "]a", "<cmd>AerialNext<CR>", { buffer = bufnr })

				vim.keymap.set("n", "[A", function()
					require("aerial").prev_up()
				end, { buffer = bufnr, desc = "Parent Symbol Up" })
				vim.keymap.set("n", "]A", function()
					require("aerial").next_up()
				end, { buffer = bufnr, desc = "Parent Symbol Down" })
			end,
		})
		vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
		vim.keymap.set("n", "<leader>fs", "<cmd>Telescope aerial<CR>", { desc = "Search Symbols (Aerial)" })
	end,
}
