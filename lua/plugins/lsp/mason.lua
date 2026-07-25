return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"rust_analyzer",
				"lua_ls",
				"luau_lsp",
				"ts_ls",
				"asm_lsp",
			},
		},

		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	"neovim/nvim-lspconfig",
}
