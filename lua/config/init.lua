vim.g.mapleader   = " "

-- Global Options
vim.o.laststatus      = 2         -- Colorea el status bar
vim.o.showmatch       = true      -- higlight matching () y []

-- Window Options
vim.wo.cursorline     = true      -- Pinta la linea donde esta el cursor
vim.wo.number         = true      -- Muestra los numeros
vim.wo.relativenumber = true      -- Numero relativos al cursor

vim.opt.listchars = {
  tab      = '→ ',
  space    = '·',
  nbsp     = '␣',
  trail    = '•',
  eol      = '¶',
  precedes = '«',
  extends  = '»'
}
