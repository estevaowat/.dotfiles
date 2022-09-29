require("mason").setup({})

local languages = { "sumneko_lua" }

require("mason-lspconfig").setup({ ensure_installed = languages })

local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers {
  function()
    lspconfig["sumneko_lua"].setup({
      settings = { Lua = { diagnostics = { globals = { 'vim' } } } }
    })
    lspconfig["tsserver"].setup {}
  end
}
