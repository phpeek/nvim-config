local plugins = {
  -- vim learning
  {
    "ThePrimeagen/vim-be-good", cmd = "VimBeGood"
  },

  -- git intergration
  {
    "tpope/vim-fugitive", cmd = "Git"
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function ()
      return require "custom.plugins.configs.treesitter"
    end
  },

  -- mason
  {
    "williamboman/mason.nvim",
    opts = function ()
      return require "custom.plugins.configs.mason"
    end
  },

  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end
  },
}

return plugins
