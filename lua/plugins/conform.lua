return {
	"stevearc/conform.nvim",
	opts = {
		lua = { "selene" },
		asm = { "asmfmt" },
		-- rust = { "rustfmt", lsp_format = "fallback" },
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
