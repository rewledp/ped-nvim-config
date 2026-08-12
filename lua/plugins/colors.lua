local function enable_transparency()
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
return {
	{ "ellisonleao/gruvbox.nvim" },
	{ "EdenEast/nightfox.nvim" },
	{ "sainnhe/everforest" },
	{ "navarasu/onedark.nvim" },
	{ "folke/tokyonight.nvim" },
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "rebelot/kanagawa.nvim" },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "Mofiqul/dracula.nvim" },
	{ "marko-cerovac/material.nvim" },
	{ "Shatur/neovim-ayu" },
	{ "shaunsingh/nord.nvim" },
	{
		"zaldih/themery.nvim",
		lazy = false,
		opts = {
			themes = {
				"tokyonight",
				"gruvbox",
				"nightfox",
				"everforest",
				"onedark",
				"catppuccin",
				"kanagawa",
				"rose-pine",
				"dracula",
				"material",
				"ayu",
				"nord",
			},
			themeConfigFile = "c:\\v:null",
		},
		config = function(_, opts)
			require("themery").setup(opts)
			vim.api.nvim_create_autocmd("ColorScheme", {
				callback = function()
					enable_transparency()
				end,
			})
			enable_transparency()
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			theme = "auto",
			sections = {
				lualine_x = { "%S", "encoding", "fileformat", "filetype" },
			},
		},
	},
}
