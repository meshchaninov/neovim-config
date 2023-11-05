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

  -- 
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use "yamatsum/nvim-cursorline"

end,

config = {
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end
  }
}})
