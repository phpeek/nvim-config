---@type NvPluginSpec[]
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
    opts = require "custom.plugins.configs.treesitter",
  },

  -- mason
  {
    "williamboman/mason.nvim",
    opts = require "custom.plugins.configs.mason",
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
    event = "BufWritePre",
    cmd = { "ConformInfo" },
    config = function()
      require "custom.plugins.configs.conform"
    end,
  },

  --- telescope
  {
    "nvim-telescope/telescope.nvim",
    opts = require "custom.plugins.configs.telescope",
  },

  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },

  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require "custom.plugins.configs.rest-nvim"
    end,
  },

  -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "custom.plugins.configs.nvimtree",
  },

  -- vim-test
  {
    "vim-test/vim-test",
    cmd = { "TestNearest", "TestSuite", "TestClass", "TestFile", "TestLast", "TestVisit" },
  },

  -- better-escape
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require "custom.plugins.configs.better_escape"
    end,
  },

  -- accelerated-jk
  {
    "rainbowhxch/accelerated-jk.nvim",
    event = "BufWinEnter",
    config = function()
      require "custom.plugins.configs.accelerated-jk"
    end,
  },

  -- vim-surround
  {
    "tpope/vim-surround",
    event = "BufReadPost",
  },

  -- nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    opts = require "custom.plugins.configs.cmp",
  },
}

return plugins
