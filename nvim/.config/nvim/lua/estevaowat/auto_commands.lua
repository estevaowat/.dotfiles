local format_autogroup = vim.api.nvim_create_augroup("format_autogroup", {
    clear = true
})

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "*.js", "*.ts", "*.java", "*.go", "*.lua" },
    callback = function() vim.lsp.buf.format() end,
    group = format_autogroup
})

local packer_group = vim.api.nvim_create_augroup("packer_user_config", {
    clear = true
})

