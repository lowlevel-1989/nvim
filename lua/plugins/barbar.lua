--[[
Solución de tabs
--]]
return {
  "romgrk/barbar.nvim",
  enable = false,
  opts = {
    animation = false,
    sidebar_filetypes = {
      NvimTree = true,
    }
  },
  config = function(plugin)
    require("barbar").setup(plugin.opts)

    vim.keymap.set("n", "<leader>1", ":BufferGoto 1<cr>", {desc = "Tab 1"})
    vim.keymap.set("n", "<leader>2", ":BufferGoto 2<cr>", {desc = "Tab 2"})
    vim.keymap.set("n", "<leader>3", ":BufferGoto 3<cr>", {desc = "Tab 3"})
    vim.keymap.set("n", "<leader>4", ":BufferGoto 4<cr>", {desc = "Tab 4"})
    vim.keymap.set("n", "<leader>5", ":BufferGoto 5<cr>", {desc = "Tab 5"})
    vim.keymap.set("n", "<leader>6", ":BufferGoto 6<cr>", {desc = "Tab 6"})
    vim.keymap.set("n", "<leader>7", ":BufferGoto 7<cr>", {desc = "Tab 7"})
    vim.keymap.set("n", "<leader>8", ":BufferGoto 8<cr>", {desc = "Tab 8"})
    vim.keymap.set("n", "<leader>9", ":BufferGoto 9<cr>", {desc = "Tab 9"})
    vim.keymap.set("n", "<leader>0", ":BufferLast<cr>",   {desc = "Tab 0"})
  end
}
