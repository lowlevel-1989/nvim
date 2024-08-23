local function run_refurb(opts)
  local shell = os.getenv("SHELL")
  vim.cmd("rightbelow split")
  vim.cmd("term refurb " .. opts.args .. " ;" .. shell)
end

vim.api.nvim_create_user_command("Refurb", run_refurb, { desc = "Run Refurb (python)", nargs = 1, complete = "file"})
