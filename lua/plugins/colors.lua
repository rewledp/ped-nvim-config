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
				lualine_x = {
					"%S",
					-- Harpoon current index
					{
						function()
							local status, harpoon = pcall(require, "harpoon")
							if not status then
								return ""
							end

							local current_file = vim.api.nvim_buf_get_name(0)
							local list = harpoon:list()
							local total = list:length()
							if total == 0 then
								return ""
							end

							for i = 1, total do
								local item = list.items[i]
								if item and vim.uv.fs_realpath(item.value) == vim.uv.fs_realpath(current_file) then
									return string.format("󰀱 %d/%d", i, total)
								end
							end
							return ""
						end,
					},
					"encoding",
					"fileformat",
					"filetype",
				},
			},
		},
	},
}
