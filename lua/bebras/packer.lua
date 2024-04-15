-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy Finder
  use 
  {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                          , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Color Scheme
  use 
  { 
	  "sainnhe/gruvbox-material",
	  as = 'gruvbox-material',
  }

  -- Parser
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Autocorrect
  use 
  {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = 
	  {
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  -- Better Undo
  use('mbbill/undotree')

  -- Git
  use('tpope/vim-fugitive')

  -- File Explorer
  use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
  }

end)
