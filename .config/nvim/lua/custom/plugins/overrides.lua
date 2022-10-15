local M = {}
local logo = {
  "      __________...----..____..-'``-..___                        ",
  "  ,'.                                  ```--..                   ",
  " :                                             ``._              ",
  " |                           --                    ``.           ",
  " |                   -.-      -.     -   -.        `.            ",
  " :                     __           --            .     \\       ",
  "  `._____________     (  `.   -.-      --  -   .   `     \\      ",
  "     `-----------------\\   \\_.--------..__..--.._ `. `.   :    ",
  "                        `--'                     `-._ .   |      ",
  "                                                     `.`  |      ",
  "                                                       \\` |     ",
  "                       neovim                           \\ |     ",
  "                                                        / \\`.   ",
  "                                                       /  _\\-'  ",
  "                                                      /_,'       ",
}

M.alpha = {
  header = {
    type = "text",
    val = logo,
    opts = {
      position = "center",
      hl = "AlphaHeader",
    },
  },
}

M.nvchad_ui = {
  statusline = {
    separator_style = "block",
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "c",
    "bash",
    "lua",
    "norg",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "norg",
    "",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "emmet-ls",
    "json-lsp",

    -- shell
    "shfmt",
    "shellcheck",
  },
}

return M
