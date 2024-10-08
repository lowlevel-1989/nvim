--[[
Mucho mas que un simple buscador de archivos
]]
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make"
    },
  },
  opts = {
    defaults = require("telescope.themes").get_ivy(),
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true,  -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      }
    }
  },
  config = function(plugin)
    local telescope  = require("telescope")
    local builtin    = require('telescope.builtin')

    telescope.setup(plugin.opts)
    telescope.load_extension("fzf")
    telescope.load_extension("todo-comments")

    -- keymap busqueda
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fl", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep,  {})
    vim.keymap.set("n", "<leader>fk", builtin.keymaps,    {})
    vim.keymap.set("n", "<leader>fb", builtin.buffers,    {})
    vim.keymap.set("n", "<leader>fh", builtin.help_tags,  {})
    vim.keymap.set("n", "<leader>fp", builtin.man_pages,  {})
    vim.keymap.set("n", "man",        builtin.man_pages,  {})

    -- keymap git
    vim.keymap.set("n", "<keader>gc", builtin.git_commits,  {desc = "git commits"})
    vim.keymap.set("n", "<leader>gd", builtin.git_bcommits, {desc = "git bcommits"})
    vim.keymap.set("n", "<leader>gb", builtin.git_branches, {desc = "git branches"})
    vim.keymap.set("n", "<leader>gs", builtin.git_status,   {desc = "git status"})
    vim.keymap.set("n", "<leader>gl", builtin.git_files,    {desc = "git ls-files"})


    -- keymap buffer
    vim.keymap.set("n", "<leader>bl", builtin.buffers,                 {desc = "buffer list"})
    vim.keymap.set("n", "<leader>bd", ":bd<cr>",                       {desc = "buffer delete"})
    vim.keymap.set("n", "<leader>bc", ":BufferClose<cr>",              {desc = "buffer close"})
    vim.keymap.set("n", "<leader>bx", ":BufferCloseAllButCurrent<cr>", {desc = "buffer close all but current"})
  end
}
