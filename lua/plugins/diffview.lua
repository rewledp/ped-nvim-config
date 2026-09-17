return {
	"sindrets/diffview.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>gd", "<cmd>DiffviewOpen HEAD~1 -- %<cr>", desc = "Diff file vs last commit" },
		{ "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history timeline" },
		{ "<leader>gx", "<cmd>DiffviewClose<cr>", desc = "Close diff view" },
	},
}
