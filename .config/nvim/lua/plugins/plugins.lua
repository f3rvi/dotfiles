local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    print("Installing and configuring plugins...")
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'shaunsingh/nord.nvim',
    config = function()
      require('plugins.configs.ui.theme')
    end,
  }

  use {
  'kyazdani42/nvim-web-devicons',
  module = "nvim-web-devicons",
  config = function()
    require('plugins.configs.ui.icons')
  end,
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('plugins.configs.ui.lualine')
    end,
    after = "nord.nvim",
  }

  --use {
  --  'lukas-reineke/indent-blankline.nvim',
  --  config = function()
  --    require('plugins.configs.ui.indent-blankline')
  --  end,
  --}

  use {
    'nvim-treesitter/nvim-treesitter',
    setup = function()
      require('core.lazyload').on_file_open "nvim-treesitter"
    end,
    run = ":TSUpdate",
    config = function()
      require('plugins.configs.language.treesitter')
    end,
  }

  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require('plugins.configs.completion.cmp')
    end,
  }
  use { 'hrsh7th/cmp-buffer', after = "cmp-nvim-lsp" }
  use { 'hrsh7th/cmp-path', after = "cmp-buffer" }
  use { 'saadparwaiz1/cmp_luasnip', after = "LuaSnip" }
  use { 'hrsh7th/cmp-nvim-lsp', after = "cmp-nvim-lua" }
  use { 'hrsh7th/cmp-nvim-lua', after = "cmp_luasnip" }
  use { 'onsails/lspkind.nvim', after = "nvim-cmp" }

  use {
    'L3MON4D3/LuaSnip',
    config = function()
      require('plugins.configs.completion.luasnip')
    end,
    wants = "friendly-snippets",
    after = "nvim-cmp",
  }
  use {
    'rafamadriz/friendly-snippets',
    module = { "cmp", "cmp_nvim_lsp" },
    event = "InsertEnter",
  }

  use {
    'neovim/nvim-lspconfig',
    opt = true,
    setup = function()
      require('core.lazyload').on_file_open "nvim-lspconfig"
    end,
    config = function()
      require('plugins.configs.language.lsp.lspconfig')
    end,
  }

  use {
    'williamboman/mason.nvim',
    config = function()
      require('plugins.configs.language.mason')
    end,
  }

  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    config = function()
      require('plugins.configs.ui.bufferline')
    end,
    after = "nord.nvim",
  }

  use {
    'nvim-tree/nvim-tree.lua',
    tag = 'nightly',
    config = function()
      require('plugins.configs.ui.nvim-tree')
    end,
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
