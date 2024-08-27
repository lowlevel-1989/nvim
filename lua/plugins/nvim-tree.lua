--[[
Arbol de carpeta
--]]
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function (plugin)
    require("nvim-tree").setup(plugin.opts)

    vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<cr>", { desc = "tree toggle"})
  end
}
