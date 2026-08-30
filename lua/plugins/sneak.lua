return {
	"justinmk/vim-sneak",
	event = "VeryLazy",
	config = function()
		vim.keymap.set({ "n", "x", "o" }, "<leader>s", "<Plug>Sneak_s")
		vim.keymap.set({ "n", "x", "o" }, "<leader>S", "<Plug>Sneak_S")

		vim.keymap.set({ "n", "x" }, "s", "s")
		vim.keymap.set({ "n", "x" }, "S", "S")
	end,
}
