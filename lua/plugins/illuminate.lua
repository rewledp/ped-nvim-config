return {
	"RRethy/vim-illuminate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("illuminate").configure({
			providers = {
				"lsp",
				"treesitter",
				"regex",
			},
			delay = 100,
			min_count_to_highlight = 1,
			should_enable = function(bufnr)
				return vim.bo[bufnr].buftype == ""
			end,
		})
	end,
}
