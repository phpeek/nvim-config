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
      local core = require "plugins.configs.mason"
      local custom = require "custom.plugins.configs.mason"

      return vim.tbl_deep_extend("force", core, custom)
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
    event = "VeryLazy",
    config = function()
      require "custom.plugins.configs.rest-nvim"
    end,
  },

  -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      local core = require "plugins.configs.nvimtree"
      local custom = require "custom.plugins.configs.nvimtree"

      return vim.tbl_extend("force", core, custom)
    end,
  },

  -- vim-test
  {
    "vim-test/vim-test",
    cmd = { "TestNearest", "TestSuite", "TestClass", "TestFile", "TestLast", "TestVisit" },
  },

  -- better-escape
  {
    "max397574/better-escape.nvim",
    event = { "InsertEnter" },
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
}

return plugins
