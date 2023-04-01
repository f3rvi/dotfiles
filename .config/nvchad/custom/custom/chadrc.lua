---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "nord",
  theme_toggle = { "nord", "onenord_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "minimal", 
    separator_style = "round",
  },

  cmp = {
    style = "flat_dark",
  },

}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
