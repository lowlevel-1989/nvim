--[[
pinta los cambios de git en el documento
--]]
return {
  "lewis6991/gitsigns.nvim",
  opts = {},
  config = function(plugin)
    local gitsigns = require("gitsigns")
    gitsigns.setup(plugin.opts)

    vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, {})
  end
}
