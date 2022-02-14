local default_colors = require("kanagawa.colors").setup()

vim.cmd[[
try
  colorscheme gruvbox
  colorscheme kanagawa
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

