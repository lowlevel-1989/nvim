return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = {"NvimTreeToggle"},
  keys = {
    { "<leader>t", ":NvimTreeToggle<cr>", mode = "n", desc = "tree toggle"}
  },
  opts = {}
}
