---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

-- set theme and ts highlights
M.ui = {
  theme = "tokyonight",
  theme_toggle = { "tokyonight", "tokyodark" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

-- load plugins
M.plugins = "custom.plugins.init"

-- load mappings
M.mappings = require "custom.mappings"

return M
