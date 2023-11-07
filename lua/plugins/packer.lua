-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
      requires = { 
        {'nvim-lua/plenary.nvim'},
      },
  }

  -- Color scheme
  use 'sainnhe/sonokai'
  use 'tribela/vim-transparent'

  -- Nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons'
    }
  }

  -- Harpoon
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'

  --- EDITOR ---
  -- Highlight words and lines on the cursor for Neovim
  use "yamatsum/nvim-cursorline"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use {
    "HiPhish/nvim-ts-rainbow2",
  }
  use {
    "nvim-treesitter/playground"
  }

  -- () pairs
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- comment code
  use {
    "terrortylor/nvim-comment"
  }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }
end,
config = {
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end
  }
}})

