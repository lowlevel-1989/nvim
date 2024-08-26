vim.g.mapleader   = " "

-- Global Options
vim.o.laststatus      = 2         -- colorea el status bar
vim.o.showmatch       = true      -- higlight matching () y []

-- Window Options
vim.wo.cursorline     = false     -- pinta la linea donde esta el cursor
vim.wo.number         = true      -- muestra los numeros
vim.wo.relativenumber = true      -- numero relativos al cursor

vim.opt.expandtab     = true      -- convierte los tabs en espacios  
vim.opt.tabstop       = 2         -- número de espacios que representa un tab  
vim.opt.softtabstop   = 2         -- número de espacios que quieres usar al presionar Tab  
vim.opt.shiftwidth    = 2         -- número de espacios a usar para la indentación

vim.opt.list          = false     -- muestra caracteres especiales

vim.opt.listchars = {
  tab      = '→ ',
  space    = '·',
  nbsp     = '␣',
  trail    = '·',
  eol      = '¶',
  precedes = '«',
  extends  = '»'
}

vim.keymap.set('t', '<C-x>', [[<C-\><C-n>]], { desc = "Release terminal", noremap = true, silent = true })

local function copy_path(opts)
  vim.fn.setreg('"', opts.args)
end

vim.api.nvim_create_user_command("CopyPath", copy_path, { desc = "Copy Path", nargs = 1, complete = "file"})
vim.api.nvim_create_user_command("CPath", copy_path, { desc = "Copy Path", nargs = 1, complete = "file"})
