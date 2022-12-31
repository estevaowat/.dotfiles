local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua'
})


lsp.on_attach(function(_, bufnr)
	local opts = {
		buffer = bufnr,
		remap = false
	}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	severity_sort = true
})
