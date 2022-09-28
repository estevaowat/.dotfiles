require("mason").setup({})

local languages = {
	"sumneko_lua",
}

require("mason-lspconfig").setup({
	ensure_installed = languages,
})
