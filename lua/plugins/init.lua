return {
  -- vim learning
  {
    'ThePrimeagen/vim-be-good',
    cmd = 'VimBeGood',
  },

  -- git intergration
  {
    'tpope/vim-fugitive',
    cmd = 'Git',
  },

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    opts = require 'configs.treesitter',
  },

  -- mason
  {
    'williamboman/mason.nvim',
    opts = require 'configs.mason',
  },

  {
    'folke/neodev.nvim',
    opts = require 'configs.neodev',
  },

  -- lspconfig
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'folke/neodev.nvim',
    },
    config = function()
      require('nvchad.configs.lspconfig').defaults()
      require 'configs.lspconfig'
    end,
  },

  --- conform
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    cmd = { 'ConformInfo' },
    opts = require 'configs.conform',
  },

  --- telescope
  {
    'nvim-telescope/telescope.nvim',
    opts = require 'configs.telescope',
  },

  -- {
  --   "vhyrro/luarocks.nvim",
  --   priority = 1000,
  --   config = true,
  -- },

  -- {
  --   "rest-nvim/rest.nvim",
  --   ft = "http",
  --   dependencies = { "luarocks.nvim" },
  --   config = function()
  --     require "configs.rest-nvim"
  --   end,
  -- },

  -- nvim-tree
  {
    'nvim-tree/nvim-tree.lua',
    opts = require 'configs.nvimtree',
  },

  -- better-escape
  {
    'max397574/better-escape.nvim',
    event = 'InsertEnter',
    config = function()
      require 'configs.better_escape'
    end,
  },

  -- accelerated-jk
  {
    'rainbowhxch/accelerated-jk.nvim',
    event = 'BufWinEnter',
    config = function()
      require 'configs.accelerated-jk'
    end,
  },

  -- vim-surround
  {
    'tpope/vim-surround',
    event = 'BufReadPost',
  },

  -- nvim-cmp
  {
    'hrsh7th/nvim-cmp',
    opts = require 'configs.cmp',
  },

  {
    'nvim-neotest/neotest',
    opts = function()
      return require 'configs.neotest'
    end,
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',

      -- adapters
      'nvim-neotest/neotest-plenary',
      'nvim-neotest/neotest-vim-test',
      'nvim-neotest/neotest-jest',
      'nvim-neotest/neotest-python',
      'nvim-neotest/neotest-go',
    },
  },
}
