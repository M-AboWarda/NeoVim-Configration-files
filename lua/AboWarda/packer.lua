-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
      -- apply colorscheme immediately after packersync
	  -- config = function()
		 --  vim.cmd('colorscheme rose-pine')
	  -- end
  })
  -- color the color codes (#FFF)
  use 'norcalli/nvim-colorizer.lua'
  -- use('rrethy/vim-hexokinase', { run = 'make hexokinase' })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use { -- github -- require('vgit').setup() should be called inorder to work (it is currently disabled)
      'tanvirtin/vgit.nvim',
      requires = {
          'nvim-lua/plenary.nvim'
      },
      -- config = function() require('vgit').setup() end
  }

  -- fancy status bar
  -- use({
  --     "arsham/arshamiser.nvim",
  --     requires = {
  --         "arsham/arshlib.nvim",
  --         "famiu/feline.nvim",
  --         "rebelot/heirline.nvim",
  --         "kyazdani42/nvim-web-devicons",
  --     },
  --     config = function()
  --         -- ignore any parts you don't want to use
  --         vim.cmd.colorscheme("arshamiser_light")
  --         require("arshamiser.feliniser")
  --         -- or:
  --         -- require("arshamiser.heirliniser")
  --
  --         _G.custom_foldtext = require("arshamiser.folding").foldtext
  --         vim.opt.foldtext = "v:lua.custom_foldtext()"
  --         -- if you want to draw a tabline:
  --         vim.api.nvim_set_option("tabline", [[%{%v:lua.require("arshamiser.tabline").draw()%}]])
  --     end,
  -- })

end)
