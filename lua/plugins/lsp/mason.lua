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
				"clangd",
				"neocmake",
				"jsonls",
			},

			automatic_enable = {
				exclude = { "luau_lsp" },
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		opts = {
			ensure_installed = { "codelldb" },
			handlers = {},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"mfussenegger/nvim-dap",
		},
	},
}
