--[[
Barra de estado
]]
return {
  "nvim-lualine/lualine.nvim",
  enabled = vim.env.TERM ~= "linux",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {},
}
