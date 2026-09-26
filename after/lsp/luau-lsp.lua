return {
	filetypes = { "luau", "lua" },
	settings = {
		["luau-lsp"] = {
			completion = {
				imports = {
					stringRequires = {
						enabled = true,
					},
					useConst = true,
					separateGroupsWithLine = true,
				},
				typeChecking = {
					mode = "strict",
				},
			},
		},
	},
}
