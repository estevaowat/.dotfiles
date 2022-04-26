local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {
    settings = {
      Lua = {
        diagnostics = { globals = { 'vim' }
        }
      }
    }
  }

  server:setup(opts)
end)
