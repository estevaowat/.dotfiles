local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    "git", "clone", "--depth", "1",
    "https://github.com/wbthomason/packer.nvim", install_path
  })
end

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  use("rebelot/kanagawa.nvim")
  use("nvim-lua/plenary.nvim")

  use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }

  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lua")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use({
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp"
  })
  use { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" }

  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  })

  use("onsails/lspkind-nvim")
  use("L3MON4D3/LuaSnip")

  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }

  use("j-hui/fidget.nvim")

  use("neovim/nvim-lspconfig")

  use {
    "akinsho/toggleterm.nvim",
    tag = '*',
    config = function() require("toggleterm").setup() end
  }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  if packer_bootstrap then require("packer").sync() end

end)
