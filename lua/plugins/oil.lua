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
					if dir then
						vim.ui.open(dir)
					end
				end,
			},
		},
	},

	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	lazy = false,

	config = function(_, opts)
		require("oil").setup(opts)

		-- E.g, using zoxide to change dir; Oil needs to know
		vim.api.nvim_create_autocmd("DirChanged", {
			callback = function()
				if vim.api.nvim_buf_get_name(0):match("^oil://") then
					require("oil").open(vim.fn.getcwd())
					vim.schedule(function()
						require("oil.actions").refresh.callback()
					end)
				end
			end,
		})
	end,
}
