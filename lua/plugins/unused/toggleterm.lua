return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		keys = {
			{ "<leader>tt", "<cmd>ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle Terminal" },
		},
		opts = {
			shell = "C:/msys64/usr/bin/zsh.exe",
		},
	},
}
