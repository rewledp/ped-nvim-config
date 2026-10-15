return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "lua", "luau", "rust", "cpp", "c", "qmljs" },
			auto_install = false,
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "lua", "luau", "rust", "cpp", "c", "qmljs" },
			callback = function(args)
				vim.treesitter.start(args.buf)
			end,
		})
	end,
}
