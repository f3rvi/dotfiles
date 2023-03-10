local present, alpha = pcall(require, 'alpha')

if not present then
  return
end

local function button(sc, txt, keybind)
  local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

  local opts = {
    position = "center",
    text = txt,
    cursor = 8,
    width = 36,
    hl = "AlphaButtons",
  }

  if keybind then
    opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
  end

  return {
    type = "button",
    val = txt,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true) or ""
      vim.api.nvim_feedkeys(key, "normal", false)
    end,
    opts = opts,
  }
end

-- dynamic header padding
local fn = vim.fn
local marginTopPercent = 0.1
local headerPadding = fn.max { 2, fn.floor(fn.winheight(0) * marginTopPercent) }

local options = {

  header = {
    type = "text",
    val = {
      "                         ','. '. ; : ,','       ",
      "                           '..'.,',..'          ",
      "                              ';.'  ,'          ",
      "                               ;;               ",
      "                               ;'               ",
      "                 :._   _.------------.___       ",
      "         __      :__:-'                  '--.   ",
      " __    ,' .'    .'             ______________'. ",
      "/__ '.-  _\\___.'          0  .' .'  .'  _.-_.' ",
      "   '._                     .-': .' _.' _.'_.'   ",
      "      '----'._____________.'_'._:_:_.-'--'      ",
    },
    opts = {
      position = "center",
      hl = "AlphaHeader",
    },
  },

  buttons = {
    type = "group",
    val = {
      button("SPC f f", "find   [ ]", ":Telescope find_files<CR>"),
      button("SPC f o", "recent [ ]", ":Telescope oldfiles<CR>"),
      button("SPC f w", "word   [ ]", ":Telescope live_grep<CR>"),
      button("SPC b m", "marks  [ ]", ":Telescope marks<CR>"),
    },
    opts = {
      spacing = 1,
    },
  },

  headerPaddingTop = { type = "padding", val = headerPadding },
  headerPaddingBottom = { type = "padding", val = 2 },
}

alpha.setup {
  layout = {
    options.headerPaddingTop,
    options.header,
    options.headerPaddingBottom,
    options.buttons,
  },
  opts = {},
}
