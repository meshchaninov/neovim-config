local api = require "nvim-tree.api"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_auto_close = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.keymap.set('n', '<C-n>', api.tree.toggle, {})


-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  hijack_cursor = true,
  view = {
    width = 50,
    signcolumn = "no",
    number = true,
    relativenumber = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  trash = {
    cmd = "gio trash"
  }
})
