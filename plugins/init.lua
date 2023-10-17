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
  }
}

return plugins
