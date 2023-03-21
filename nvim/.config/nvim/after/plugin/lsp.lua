local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'eslint',
    'tsserver',
    'gopls',
    'lua_ls'
})

lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.on_attach(function(_, bufnr)
    local opts = {
        buffer = bufnr,
        noremap = false
    }

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', 'rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    severity_sort = true
})
