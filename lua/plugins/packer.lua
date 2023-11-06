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
  use 'Bekaboo/deadcolumn.nvim'
  use 'tribela/vim-transparent'

  -- Nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons'
    }
  }


  --- EDITOR ---
  -- Highlight words and lines on the cursor for Neovim
  use "yamatsum/nvim-cursorline"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
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

end,

config = {
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end
  }
}})
