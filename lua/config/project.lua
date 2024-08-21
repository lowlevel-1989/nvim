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

vim.api.nvim_create_user_command("Project", open_project, { nargs = 1, complete = "dir"})
vim.api.nvim_create_user_command("P",       open_project, { nargs = 1, complete = "dir"})
vim.api.nvim_create_user_command("PP",      open_project_plugin, { nargs = 0})
vim.api.nvim_create_user_command("Pp",      open_project_plugin, { nargs = 0})
vim.api.nvim_create_user_command("Pc",      open_project_plugin, { nargs = 0})
