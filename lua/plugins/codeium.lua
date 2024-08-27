--[[
Predice codigo con inteligencia artificial
--]]
return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  config = function ()
    vim.cmd("call CodeiumDisable()")

    vim.keymap.set("n", "<leader>ia", ":CodeiumToggle<cr>", {desc = "tree toggle"})
    vim.keymap.set("n", "<leader>ia", ":CodeiumToggle<cr>", {desc = "tree toggle"})
  end
}
