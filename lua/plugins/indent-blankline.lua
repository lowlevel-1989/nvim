--[[
pinta las lineas de flujo
]]
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = vim.env.TERM ~= "linux" and "▏" or "|",
    }
  },
}
