vim.api.nvim_create_augroup("Godot", {})
vim.api.nvim_create_autocmd("FileType", {
  group = "Godot",
  pattern = "gdscript",
  callback = function()
    vim.opt_local.expandtab   = false     -- convierte los tabs en espacios  
    vim.opt_local.softtabstop = 2         -- número de espacios que quieres usar al presionar Tab  
    vim.opt_local.shiftwidth  = 2         -- número de espacios a usar para la indentación
  end
})
