--[[
Pinta los cambios de git en el documento
--]]
return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add          = { text = '|' },
      change       = { text = '|' },
      delete       = { text = '_' },
      topdelete    = { text = '-' },
      changedelete = { text = '~' },
      untracked    = { text = '}' },
    },
    signs_staged = {
      add          = { text = '|' },
      change       = { text = '|' },
      delete       = { text = '_' },
      topdelete    = { text = '-' },
      changedelete = { text = '~' },
      untracked    = { text = '}' },
    },
  },
  config = function(plugin)
    local gitsigns = require("gitsigns")
    gitsigns.setup(plugin.opts)

    vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, {desc = "git preview hunk"})
  end
}
