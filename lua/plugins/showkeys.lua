return {
	"nvzone/showkeys",
	event = "VeryLazy",
	opts = {
		show_count = true,
		timeout = 1,
		maxkeys = 5,
		-- more opts
	},
	config = function(_, opts)
		require("showkeys").setup(opts)
		require("showkeys").toggle()
	end,
}
