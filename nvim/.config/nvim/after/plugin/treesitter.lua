require'nvim-treesitter.configs'.setup {
  ensure_installed = { "help", "lua", "go", "javascript", "typescript", "java", "markdown" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
