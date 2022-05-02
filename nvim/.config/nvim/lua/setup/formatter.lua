require("formatter").setup({
  logging = true,
  filetype = {
    lua = {
      function()
        return {
          exe = "stylua",
          args = {
            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
            "--indent-width",
            4,
            "--ident-type",
            "Spaces",
            "--quote_style",
            "ForceSingle",
          },
          stdin = false,
        }
      end,
    },
    json = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--double-quote" },
          stdin = true,
        }
      end,
    },
    typescript = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
    javascript = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
  },
})
