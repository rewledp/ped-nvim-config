return {
	"folke/persistence.nvim",
	event = "BufReadPre", -- this will only start session saving when an actual file was opened
	opts = {},
	config = function(_, opts)
		require("persistence").setup(opts)

		-- Keymaps to load sessions manually if needed
		vim.keymap.set("n", "<leader>qs", function()
			require("persistence").load()
		end, { desc = "Restore Session" })
		vim.keymap.set("n", "<leader>ql", function()
			require("persistence").load({ last = true })
		end, { desc = "Restore Last Session" })
		vim.keymap.set("n", "<leader>qd", function()
			require("persistence").stop()
		end, { desc = "Don't Save Current Session" })
	end,
}
