require("null-ls").setup({
  sources = {
    require("null-ls").builtins.diagnostics.luacheck,
   require("null-ls").builtins.formatting.lua_format
  }
})
