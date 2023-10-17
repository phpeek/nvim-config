---@type ChadrcConfig
local M = {}

-- load mappings
M.mappings = require "custom.mappings"

-- set theme
M.ui = { theme = 'tokyonight' }

-- load plugins
M.plugins = "custom.plugins.init"

return M
