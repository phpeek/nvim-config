local plugins = {
  -- vim learning
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
  },

  -- git intergration
  {
    "tpope/vim-fugitive",
    cmd = "Git",
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    opts = function()
      local base = require "plugins.configs.treesitter"
      local overwrite = require "custom.plugins.configs.treesitter"

      return vim.tbl_deep_extend("force", base, overwrite)
    end,
  },

  -- mason
  {
    "williamboman/mason.nvim",
    opts = function()
      return require "custom.plugins.configs.mason"
    end,
  },

  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },

  --- conform
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    cmd = { "ConformInfo" },
    config = function()
      require "custom.plugins.configs.conform"
    end,
  },

  --- telescope
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local core = require "plugins.configs.telescope"
      local custom = require "custom.plugins.configs.telescope"

      return vim.tbl_deep_extend("force", core, custom)
    end,
  },

  -- rest.nvim
  {
    "rest-nvim/rest.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    cmd = { "RestNvim", "RestNvimPreview", "RestNvimLast" },
    config = function()
      require("rest-nvim").setup {
        --- Get the same options from Packer setup
      }
    end,
  },
}

return plugins
