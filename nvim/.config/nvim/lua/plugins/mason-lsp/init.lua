require("mason").setup({})

local languages = {
  "sumneko_lua"
}

require("mason-lspconfig").setup({
  ensure_installed = languages,
})


local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {}
  end,
}
