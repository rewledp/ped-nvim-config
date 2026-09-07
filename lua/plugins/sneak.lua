return {
	"justinmk/vim-sneak",
	event = "VeryLazy",
	config = function()
		vim.keymap.set({ "n", "x", "o" }, "<leader>z", "<Plug>Sneak_s")
		vim.keymap.set({ "n", "x", "o" }, "<leader>Z", "<Plug>Sneak_S")

		vim.keymap.set({ "n", "x" }, "s", "s")
		vim.keymap.set({ "n", "x" }, "S", "S")
	end,
}
