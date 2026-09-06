return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local harpoon = require("harpoon")

		-- Get Oil's root for the marked harpoon buffers.
		harpoon:setup({
			default = {
				get_root_dir = function()
					local ok, oil = pcall(require, "oil")
					if ok then
						local oil_dir = oil.get_current_dir()
						if oil_dir then
							return oil_dir
						end
					end
					return vim.loop.cwd()
				end,
			},
		})

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<leader>r", function()
			harpoon:list():remove()
		end)

		vim.keymap.set("n", "<leader>h", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<A-p>", function()
			harpoon:list():prev()
		end)

		vim.keymap.set("n", "<A-n>", function()
			harpoon:list():next()
		end)

		for i = 1, 9 do
			local keybind = "<leader>" .. i
			vim.keymap.set("n", keybind, function()
				harpoon:list():select(i)
			end)
		end

		-- local conf = require("telescope.config").values
		-- local function toggle_telescope(harpoon_files)
		--     local file_paths = {}
		--     for _, item in ipairs(harpoon_files.items) do
		-- 	table.insert(file_paths, item.value)
		--     end

		--     require("telescope.pickers").new({}, {
		-- 	prompt_title = "Harpoon",
		-- 	finder = require("telescope.finders").new_table({
		-- 	    results = file_paths,
		-- 	}),
		-- 	previewer = conf.file_previewer({}),
		-- 	sorter = conf.generic_sorter({}),
		--     }):find()
		-- end

		-- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
		-- { desc = "Open harpoon window" })
	end,
}
