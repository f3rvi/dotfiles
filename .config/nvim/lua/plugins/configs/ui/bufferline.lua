local present, bufferline = pcall(require, 'bufferline')
if not present then
  return
end

local highlights = require("nord").bufferline.highlights({
  italic = true,
  bold = true,
  fill = "#2E3440",
})

bufferline.setup({
  options = {
    separator_style = "thin",
    show_close_icon = false,
    show_buffer_close_icons = false,
    offsets = {
      { filetype = "NvimTree" }
    }
  },
  highlights = highlights,
})
