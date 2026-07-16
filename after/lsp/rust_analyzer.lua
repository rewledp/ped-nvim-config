return {
    on_attach = function(client, bufnr)
	if client.server_capabilities then
	    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
	end
    end
}
