return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		presets = {
			long_message_to_split = true,
			inc_rename = false,
			lsp_doc_border = true,
		},
		lsp = {
			signature = {
				enabled = false,
			},
			hover = {
				enabled = false,
			},
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
			},
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"rcarriga/nvim-notify",
			opts = {
				stages = "static",
				timeout = 3000,
				render = "compact",
				top_down = true,
			},
		},
	},
}
