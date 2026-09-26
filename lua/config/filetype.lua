vim.filetype.add({
	pattern = {
		[".*%.lua"] = function(path)
			local markers = { "wally.toml", ".luaurc", "default.project.json", "sourcemap.json" }
			if vim.fs.find(markers, { path = vim.fs.dirname(path), upward = true })[1] then
				return "luau"
			end
		end,
	},
})
