---@type ChadrcConfig 
local M = {}
M.ui = {
  theme_toggle = { "gruvbox", "gruvbox_light" },
  theme = 'gruvbox'
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
return M
