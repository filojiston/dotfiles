-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
  -- Add you plugins here:
  use 'wbthomason/packer.nvim' -- packer can manage itself

  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-sleuth'
  use 'tpope/vim-commentary'
  use 'mg979/vim-visual-multi'
  use 'junegunn/vim-easy-align'

  use 'vim-airline/vim-airline'
  use 'jiangmiao/auto-pairs'

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
       ts_update()
      end,
  }

use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        require("lspsaga").setup({})
    end,
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        {"nvim-treesitter/nvim-treesitter"}
    }
})

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use({
    'j-hui/fidget.nvim',
    branch = 'main',
    config = function()
        require('fidget').setup({})
    end,
})

  use('onsails/lspkind-nvim')
  use('nvim-lua/lsp_extensions.nvim')
  use('simrat39/symbols-outline.nvim')
  use('jose-elias-alvarez/null-ls.nvim')

  use 'morhetz/gruvbox'
  use 'folke/tokyonight.nvim'
  use 'navarasu/onedark.nvim'

  use 'neovim/nvim-lspconfig'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'folke/neodev.nvim'
  use "lukas-reineke/indent-blankline.nvim"

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }
  if packer_bootstrap then
    require('packer').sync()
  end
end)
