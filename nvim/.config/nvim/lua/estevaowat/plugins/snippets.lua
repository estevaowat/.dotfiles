return {
	"saadparwaiz1/cmp_luasnip",
	version = false,
	dependencies = {
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local luasnip = require("luasnip")
		require("luasnip.loaders.from_vscode").lazy_load()

		luasnip.filetype_extend("typescript", { "tsdoc" })
		luasnip.filetype_extend("javascript", { "jsdoc" })
		luasnip.filetype_extend("lua", { "luadoc" })
		luasnip.filetype_extend("python", { "pydoc" })
		luasnip.filetype_extend("go", { "godoc" })
		luasnip.filetype_extend("java", { "javadoc" })
		luasnip.filetype_extend("sh", { "shelldoc" })
	end,
}
