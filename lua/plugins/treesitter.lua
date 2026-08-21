return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "lua", "rust", "cpp", "c" },
			auto_install = false,
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "lua", "rust", "cpp", "c" },
			callback = function(args)
				vim.treesitter.start(args.buf)
			end,
		})
	end,
}
