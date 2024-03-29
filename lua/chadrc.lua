--- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

--@type ChadrcConfig
local M = {}

-- set theme and ts highlights
M.ui = {
  theme = 'tokyonight',

  hl_override = {
    Comment = { italic = true },
    ['@comment'] = { italic = true },
  },
  hl_add = {
    NvimTreeOpenedFolderName = { fg = 'teal', bold = true },
  },
}

-- load plugins
-- M.plugins = "plugins.init"

-- load mappings
-- M.mappings = require "custom.mappings"

return M
