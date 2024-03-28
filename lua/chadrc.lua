---@type ChadrcConfig
local M = {}

-- set theme and ts highlights
M.ui = {
  theme = "tokyonight",
  theme_toggle = { "tokyonight", "tokyodark" },

  hl_override = {
    Comment = {
      italic = true,
    },
  },
  hl_add = {
    NvimTreeOpenedFolderName = { fg = "teal", bold = true },
  },
}

-- load plugins
-- M.plugins = "plugins.init"

-- load mappings
-- M.mappings = require "custom.mappings"

return M
