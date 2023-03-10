local present, telescope = pcall(require, 'telescope')
if not present then
  return
end

local actions = require('telescope.actions')
local layout = require('telescope.actions.layout')

local config = {
  dynamic_preview_title = true,
  pickers = {
    buffers = {
      sort_lastused = true,
      prompt_prefix = "   ",
      previewer = false,
      layout_config = {
        width = 0.3,
        height = 0.4,
      },
    },
    file_browser = {
      prompt_prefix = "   ",
      hidden = true,
      initial_mode = "normal",
    },
    find_files = {
      no_ignore = true,
      hidden = true,
      prompt_prefix = "   ",
      mappings = {
        ["i"] = {
          ["<C-K>"] = actions.preview_scrolling_up,
          ["<C-J>"] = actions.preview_scrolling_down,
        },
        ["n"] = {
          ["v"] = function(prompt_buffer) vmultiple(prompt_buffer, "vsplit") end,
          ["p"] = layout.toggle_preview,
        },
      },
    },
    highlights = {
      prompt_prefix = " קּ  ",
    },
    live_grep = {
      prompt_prefix = "   ",
      mappings = {
        ["i"] = {
          ["<C-K>"] = actions.preview_scrolling_up,
          ["<C-J>"] = actions.preview_scrolling_down,
        },
        ["n"] = {
          ["v"] = function(prompt_buffer) vmultiple(prompt_buffer, "vsplit") end,
          ["p"] = layout.toggle_preview,
          ["V"] = function(prompt_buffer) vmultiple(prompt_buffer, "edit") end,
        },
      },
    },
    git_commits = {
      prompt_prefix = " ﰖ  ",
    },
    git_bcommits = {
      prompt_prefix = " ﰖ  ",
    },
    git_branches = {
      prompt_prefix = " שׂ  ",
    },
    git_status = {
      prompt_prefix = "   ",
      git_icons = {
        added = "+",
        changed = "~",
        copied = ">",
        deleted = "-",
        renamed = "➡",
        unmerged = "‡",
        untracked = "?",
      },
    },
    git_files = {
      prompt_prefix = " שׂ  ",
    },
    commands = {
      prompt_prefix = "   ",
      theme = "dropdown",
      layout_config = {
        height = 0.7,
        width = 0.7,
      },
    },
    registers = {
      prompt_prefix = "   ",
      theme = "nord",
    },
    spell_suggests = {
      prompt_prefix = "   ",
      theme = "nord",
      layout_config = {
        height = 15,
      },
    },
    keymaps = {
      prompt_prefix = "   ",
      theme = "nord",
      layout_config = {
        height = 10,
      },
    },
    lsp_code_actions = {
      prompt_prefix = "   ",
      theme = "cursor",
    },
    lsp_references = {
      prompt_prefix = "   ",
      theme = "nord",
    },
    lsp_implementations = {
      prompt_prefix = "   ",
      theme = "nord",
    },
    lsp_document_diagnostics = {
      prompt_prefix = " 律 ",
      theme = "nord",
    },
  },
  defaults = {
    file_ignore_patterns = {
      "steam",
      ".git",
      "node_modules",
      "venv",
      ".venv",
      "dosdevices",
      "drive_c",
      "compatdata",
      "cargo",
      ".conan",
      "gem",
      "Brave",
      ".paradox-launcher",
      ".cache",
      "Trash",
      "unity3d",
      "Paradox Interactive",
      "autostart",
      "pulse",
      "droidcam",
      "swap",
      "kdeconnect",
      "OpenTabletDriver",
      ".icons",
      "downloads",
      "secret",
      ".librewolf",
      "kernel",
      "dic",
      "vivaldi",
      "krita",
      "mime",
      "chromium",
      "inkscape",
      "syncthing",
      "xournalpp",
      ".ssh",
      "feh",
      "discord",
      "BetterDiscord",
      "lutris",
      "secrets",
      ".var",
      "pictures",
      "easyeffects",
      ".android",
      ".cmake",
      ".dotnet",
      ".nuget",
      ".vnc",
      ".themes",
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    preview = false,
    prompt_prefix = "   ",
    selection_caret = "   ",
    entry_prefix = "    ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "bottom",
        preview_width = 0.6,
        results_width = 0.7,
      },
      vertical = { mirror = true },
      width = 0.4,
      height = 0.5,
      preview_cutoff = 120,
    },
    file_sorter = require("telescope.sorters").get_fuzzy_file,
    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
    path_display = { "truncate" },
    winblend = 0,
    border = {},
    borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
    color_devicons = true,
    use_less = true,
    set_env = { ["COLORTERM"] = "truecolor" },
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
  },
}

telescope.setup(config)
