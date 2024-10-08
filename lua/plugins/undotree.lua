--[[
Undo Tree
]]
return {
  "mbbill/undotree",
  config = function()
    vim.opt.undofile = true
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end
}
