return {
    on_attach = function(client, bufnr)
	vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })

	-- if client:supports_method('textDocument/codeLens') then	
	--     vim.lsp.codelens.enable(true, { bufnr = bufnr })
	-- end
    end
}
