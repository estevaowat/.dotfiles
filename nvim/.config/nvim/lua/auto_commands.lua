vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.ts,*.jsx,*.tsx,*.java,*.go,*.rs,*.lua :lua vim.lsp.buf.formatting_seq_sync()
augroup END
]] ,
  true)
