--[[
Solución de tabs
]]
return {
  "romgrk/barbar.nvim",
  enabled = vim.env.TERM ~= "linux",
  opts = {
    animation = false,
    sidebar_filetypes = {
      NvimTree = true,
    },
  },
  config = function(plugin)
    require("barbar").setup(plugin.opts)

    vim.keymap.set("n", "1", ":BufferGoto 1<cr>", {desc = "Tab 1"})
    vim.keymap.set("n", "2", ":BufferGoto 2<cr>", {desc = "Tab 2"})
    vim.keymap.set("n", "3", ":BufferGoto 3<cr>", {desc = "Tab 3"})
    vim.keymap.set("n", "4", ":BufferGoto 4<cr>", {desc = "Tab 4"})
    vim.keymap.set("n", "5", ":BufferGoto 5<cr>", {desc = "Tab 5"})
    vim.keymap.set("n", "6", ":BufferGoto 6<cr>", {desc = "Tab 6"})
    vim.keymap.set("n", "7", ":BufferGoto 7<cr>", {desc = "Tab 7"})
    vim.keymap.set("n", "8", ":BufferGoto 8<cr>", {desc = "Tab 8"})
    vim.keymap.set("n", "9", ":BufferGoto 9<cr>", {desc = "Tab 9"})
  end
}
