return {
	"justinmk/vim-sneak",
	event = "VeryLazy",
	config = function()
		vim.cmd([[
      map z <Plug>Sneak_s
      map Z <Plug>Sneak_S
    ]])
	end,
}
