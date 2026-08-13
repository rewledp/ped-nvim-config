return {
	"stevearc/oil.nvim",

	opts = {
		keymaps = {
			["gy"] = {
				desc = "Copy filepath to system clipboard",
				callback = function()
					local oil = require("oil")
					local entry = oil.get_cursor_entry()
					local dir = oil.get_current_dir()
					if entry and dir then
						vim.fn.setreg("+", dir .. entry.name)
						vim.notify(dir .. entry.name)
					end
				end,
			},

			["ge"] = {
				desc = "Open current dir in explorer",
				callback = function()
					local dir = require("oil").get_current_dir()
					vim.ui.open(dir)
				end,
			},
		},
	},

	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
}
