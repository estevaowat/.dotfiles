local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

  use("rebelot/kanagawa.nvim")
  use("nvim-lua/plenary.nvim")
  use("neovim/nvim-lspconfig")
  use("williamboman/nvim-lsp-installer")

  use({
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("setup/telescope")
    end,
  })

  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lua")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use({
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    config = function()
      require("setup/cmp_tabnine")
    end,
  })

  use("onsails/lspkind-nvim")

  use("L3MON4D3/LuaSnip")

  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      require("setup/lualine")
    end,
  })

  use({
    "j-hui/fidget.nvim",
    config = function() require("setup/fidget") end,
  })
  if packer_bootstrap then
    require("packer").sync()
  end
end)
