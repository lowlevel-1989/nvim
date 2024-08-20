local function open_project(opts)
    vim.cmd("NvimTreeClose"             )
    vim.cmd("cd "           .. opts.args)
    vim.cmd("NvimTreeOpen " .. opts.args)
end

vim.api.nvim_create_user_command("Project", open_project, { nargs = 1, complete = "dir"})
vim.api.nvim_create_user_command("P",       open_project, { nargs = 1, complete = "dir"})
