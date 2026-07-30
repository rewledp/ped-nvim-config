return {
	"justinmk/vim-sneak",
	event = "VeryLazy",
	config = function()
		vim.keymap.set({ "n", "x", "o" }, "z", "<Plug>Sneak_s", { remap = true })
		vim.keymap.set({ "n", "x", "o" }, "Z", "<Plug>Sneak_S", { remap = true })

		vim.keymap.set({ "n", "x" }, "s", "s", { remap = true })
		vim.keymap.set({ "n", "x" }, "S", "S", { remap = true })
	end,
}
