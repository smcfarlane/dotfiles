---@type ChadrcConfig 
local M = {}
M.ui = {
  theme_toggle = { "everblush", "everblush_light" },
  theme = 'everblush'
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"


local opt = vim.opt
local g = vim.g

opt.smartindent = true
opt.relativenumber = true
opt.breakindent = true
opt.showbreak = "  ↳"

return M
