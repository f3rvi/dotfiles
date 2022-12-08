local present, nvimtree = pcall(require, 'nvim-tree')
if not present then
  return
end

local options = {
  ignore_ft_on_setup = { "alpha" },
  auto_reload_on_write = false,
  hijack_directories = {
    enable = false,
  },
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 200,
  },
  filesystem_watchers = {
    enable = true,
  },
  view = {
    width = 20,
    hide_root_folder = false,
    side = "left",
    mappings = {
      custom_only = false,
      list = {
        { key = { "<C-]>", "a", "d", "D" }, action = "" },
        { key = "<A-Down>",                 action = "cd" },
        { key = "<A-Up>",                   action = "dir_up" },
        { key = { "+", "=" },               action = "create" },
        { key = "_",                        action = "remove" },
        { key = "-",                        action = "trash" },
      },
    },
    number = false,
    relativenumber = false,
    adaptive_size = true,
    signcolumn = "yes",
  },
  renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "╰",
        edge = "│",
        item = "│",
        none = " ",
      },
    },
    icons = {
      webdev_colors = true,
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = false,
      },
      glyphs = {
        default = "",
        symlink = "",
        git = {
          deleted = "",
          ignored = "◌",
          renamed = "➜",
          staged = "S",
          unmerged = "",
          unstaged = "",
          untracked = "U",
        },
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
        },
      },
    },
    highlight_git = true,
    group_empty = false,
    root_folder_modifier = ":t",
  },
  filters = {
    dotfiles = false,
    custom = { "node_modules", "\\.cache" },
    exclude = {},
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      diagnostics = false,
      git = false,
      profile = false,
    },
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = true,
      restrict_above_cwd = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
}

nvimtree.setup(options)
