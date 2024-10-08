--[[
Permite colapsar el codigo con zz o za
]]
return {
  "kevinhwang91/nvim-ufo",
  opts = {},
  dependencies = { "kevinhwang91/promise-async" },
  config = function(plugin)
    require("ufo").setup(plugin.opts)

    vim.o.foldcolumn     = "1"
    vim.o.foldlevel      = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    vim.keymap.set("n", "zz", "za", { noremap = true, silent = true })
  end
}
