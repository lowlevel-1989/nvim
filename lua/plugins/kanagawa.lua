--[[
Este es el tema que estoy utilizando
]]
return {
  "rebelot/kanagawa.nvim",
  enabled = vim.env.TERM ~= "linux",
  config = function()
    require("kanagawa").load("wave")
  end
}
