return {
  {
    'ThePrimeagen/vim-be-good',
    cmd = 'VimBeGood',
  },

  {
    'tpope/vim-fugitive',
    cmd = 'Git',
  },

  {
    'nvim-treesitter/nvim-treesitter',
    opts = require 'configs.treesitter',
  },

  {
    'williamboman/mason.nvim',
    opts = require 'configs.mason',
  },

  {
    'neovim/nvim-lspconfig',
    config = function()
      require('nvchad.configs.lspconfig').defaults()
      require 'configs.lspconfig'
    end,
  },

  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    cmd = { 'ConformInfo' },
    opts = require 'configs.conform',
  },

  {
    'nvim-telescope/telescope.nvim',
    opts = require 'configs.telescope',
  },

  {
    'nvim-tree/nvim-tree.lua',
    opts = require 'configs.nvimtree',
  },

  {
    'max397574/better-escape.nvim',
    event = 'InsertEnter',
    config = function()
      require 'configs.better_escape'
    end,
  },

  {
    'rainbowhxch/accelerated-jk.nvim',
    event = 'BufWinEnter',
    config = function()
      require 'configs.accelerated-jk'
    end,
  },

  {
    'tpope/vim-surround',
    event = 'BufReadPost',
  },

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
