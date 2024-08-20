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

    vim.keymap.set("n", "<leader>1", ":BufferGoto 1<cr>", {})
    vim.keymap.set("n", "<leader>2", ":BufferGoto 2<cr>", {})
    vim.keymap.set("n", "<leader>3", ":BufferGoto 3<cr>", {})
    vim.keymap.set("n", "<leader>4", ":BufferGoto 4<cr>", {})
    vim.keymap.set("n", "<leader>5", ":BufferGoto 5<cr>", {})
    vim.keymap.set("n", "<leader>6", ":BufferGoto 6<cr>", {})
    vim.keymap.set("n", "<leader>7", ":BufferGoto 7<cr>", {})
    vim.keymap.set("n", "<leader>8", ":BufferGoto 8<cr>", {})
    vim.keymap.set("n", "<leader>9", ":BufferGoto 9<cr>", {})
    vim.keymap.set("n", "<leader>0", ":BufferLast<cr>",   {})
  end
}
