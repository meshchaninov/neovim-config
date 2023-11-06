local options = {
  clipboard = "unnamedplus",
  colorcolumn = "80",
  mouse = "a",
  scrolloff = 8,
  sidescrolloff = 8,
  backup = false,
  swapfile = false,
  autoindent = true,
  shiftwidth = 2,
  expandtab = true,
  tabstop = 2,
  wrap = false,
  number = true,
  relativenumber = true,
  termguicolors = true,
  list = true,
  listchars = {
    tab = '→|',
    extends = '⟩',
    precedes = '⟨',
    trail = '·',
  },
  fillchars = {
    eob = " "
  },
  numberwidth = 6,
}

vim.cmd([[
  vnoremap <M-c> "+y
]]) -- to copy CMD+C in iterm

for k, v in pairs(options) do
  vim.opt[k] = v
end
