return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			luau = { "stylua" },
			lua = { "stylua" },
			-- asm = { "asmfmt" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = true,
		},
	},
}
