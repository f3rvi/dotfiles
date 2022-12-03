local present, lualine = pcall(require, 'lualine')
if not present then
  return
end


-- Modified Nord theme
local modnord = require'lualine.themes.nord'

modnord.normal.c.bg = '#2E3440'
modnord.inactive.c.bg = '#2E3440'

modnord.insert.y.bg = '#2E3440'
modnord.visual.y.bg = '#2E3440'
modnord.command.y.bg = '#2E3440'
modnord.replace.y.bg = '#2E3440'

modnord.inactive.c.fg = '#606D78'
modnord.insert.y.fg = '#606D78'
modnord.visual.y.fg = '#606D78'
modnord.command.y.fg = '#606D78'
modnord.replace.y.fg = '#606D78'

modnord.normal.b.bg = '#2E3440'
modnord.inactive.b.bg = '#2E3440'
modnord.insert.b.bg = '#2E3440'
modnord.visual.b.bg = '#2E3440'
modnord.command.b.bg = '#2E3440'
modnord.replace.b.bg = '#2E3440'

modnord.normal.b.fg = '#606D78'
modnord.inactive.b.fg = '#606D78'
modnord.insert.b.fg = '#606D78'
modnord.visual.b.fg = '#606D78'
modnord.command.b.fg = '#606D78'
modnord.replace.b.fg = '#606D78'

modnord.normal.c.gui = 'bold'


local nvim_tree_shift = {
  function ()
    return string.rep(' ',
                      vim.api.nvim_win_get_width(require'nvim-tree.view'.get_winnr()) - 1)
  end,
  cond = require('nvim-tree.view').is_visible,
  color = 'NvimTreeNormal'
}

local options = {
  icons_enabled = true,
  section_separators = { left = ' ' },
	component_separators = {},
  disabled_filetypes = { 'NvimTree' },
	globalstatus = true,
  theme = modnord,
}

local sections = {

	lualine_a = {
    nvim_tree_shift,
    {
      'mode',
      fmt = function(str) return str:sub(1,2) end
    }
  },

  lualine_b = {
    {
      'filetype',
      colored = false,
      icon_only = true,
      padding = { right = 0, left = 1 }
    },
    'filename'
  },

	lualine_c = { 'diagnostics' },
	lualine_x = { 'progress' },

	lualine_y = {
    {
      'location',
      padding = { left = 0 },
    },
    'branch'
  },

  lualine_z = { },
}

lualine.setup {
  options = options,
  sections = sections,
}
