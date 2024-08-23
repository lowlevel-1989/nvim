--[[
Predice codigo con inteligencia artificial
--]]
return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  config = function ()
    vim.cmd("call CodeiumDisable()") 
  end
}
