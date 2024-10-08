--[[
Soporte a los comandos de git
]]
return {
  "tpope/vim-fugitive",
  dependencies = {
    "tpope/vim-rhubarb",                 -- support github
    "shumphrey/fugitive-gitlab.vim",     -- support gitlab
  },
  cmd = {"G", "Git", "GBrowse"},
  keys = {
    { "<leader>go", ":GBrowse<cr>", mode = "n", desc = "git open file url"}
  },
}
