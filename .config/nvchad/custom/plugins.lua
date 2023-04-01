local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        { name = "luasnip", max_item_count = 5 },
        {
          name = "nvim_lsp",
          entry_filter = function(entry)
            local kind = require("cmp.types").lsp.CompletionItemKind[entry:get_kind()]
            if kind == "Text" then
              return false
            end
            return true
          end,
          max_item_count = 5,
        },
        { name = "nvim_lua", max_item_count = 5 },
        { name = "path", max_item_count = 5 },
        { name = "buffer" },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

}

return plugins
