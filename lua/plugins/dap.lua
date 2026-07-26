return {
	"mfussenegger/nvim-dap",

	dependencies = {
		{
			"theHamsta/nvim-dap-virtual-text",
			opts = {},
		},

		{
			"igorlfs/nvim-dap-view",
			opts = {},
		},
	},

	config = function()
		local dap = require("dap")

		vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug: Continue" })
		vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debug: Step Over" })
		vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Debug: Step Into" })
		vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Debug: Step Out" })
		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })

		vim.keymap.set("n", "<leader>dt", "<cmd>DapViewToggle!<CR>", { desc = "Debug: Toggle DapView" })
		vim.keymap.set("n", "<leader>dw", "<cmd>DapViewWatch<CR>", { desc = "Debug: Add Watch" })
	end,
}
