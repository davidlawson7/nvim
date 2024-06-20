-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 
	  "rose-pine/neovim",
	  as = "rose-pine", 
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  }

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  use('tpope/vim-fugitive')

  -- LSP Support
  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig"
  }

  -- Autocomplete
  use { 
	  "hrsh7th/nvim-cmp",
	  "hrsh7th/cmp-nvim-lsp",
	  "hrsh7th/cmp-buffer",
	  "hrsh7th/cmp-path",
	  "hrsh7th/cmp-nvim-lsp",
	  "hrsh7th/cmp-nvim-lua"
  }

  use { 'saadparwaiz1/cmp_luasnip' }

  -- Snippets
  use({
	  "L3MON4D3/LuaSnip",
	  -- follow latest release.
	  tag = "v2.3.0", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	  -- install jsregexp (optional!:).
	  run = "make install_jsregexp"
  })

  use { "rafamadriz/friendly-snippets" }
end
)
