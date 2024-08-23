local function open_project(opts)
    vim.cmd("NvimTreeClose"             )
    vim.cmd("cd "           .. opts.args)
    vim.cmd("NvimTreeOpen " .. opts.args)
end

local function open_project_plugin()
    vim.cmd("NvimTreeClose"               )
    vim.cmd("cd ~/.config/nvim/"          )
    vim.cmd("NvimTreeOpen ~/.config/nvim/")
end


vim.api.nvim_create_user_command("Project", open_project, { desc = "Open Project", nargs = 1, complete = "dir"})
vim.api.nvim_create_user_command("P",       open_project, { desc = "Open Project", nargs = 1, complete = "dir"})
vim.api.nvim_create_user_command("PP",      open_project_plugin, { desc = "Open Plugin Project", nargs = 0})
vim.api.nvim_create_user_command("Pp",      open_project_plugin, { desc = "Open Plugin Project", nargs = 0})
vim.api.nvim_create_user_command("Pc",      open_project_plugin, { desc = "Open Plugin Project", nargs = 0})

vim.keymap.set("n", "PP", ":PP<cr>",  { desc = "Open Plugin Project" })
vim.keymap.set("n", "pp", ":PP<cr>",  { desc = "Open Plugin Project" })
