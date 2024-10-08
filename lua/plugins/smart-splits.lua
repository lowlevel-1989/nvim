--[[
Control de ventanas
]]
return {
  "mrjones2014/smart-splits.nvim",
  config = function(plugin)
    vim.keymap.set("n", "<C-h>", require("smart-splits").resize_left, {noremap = true, silent = true})
    vim.keymap.set("n", "<C-j>", require("smart-splits").resize_down, {noremap = true, silent = true})
    vim.keymap.set("n", "<C-k>", require("smart-splits").resize_up, {noremap = true, silent = true})
    vim.keymap.set("n", "<C-l>", require("smart-splits").resize_right, {noremap = true, silent = true})

    vim.keymap.set("n", "<C-Left>",  require("smart-splits").resize_left, {noremap = true, silent = true})
    vim.keymap.set("n", "<C-Down>",  require("smart-splits").resize_down, {noremap = true, silent = true})
    vim.keymap.set("n", "<C-Up>",    require("smart-splits").resize_up, {noremap = true, silent = true})
    vim.keymap.set("n", "<C-Right>", require("smart-splits").resize_right, {noremap = true, silent = true})
    
    vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left, {noremap = true, silent = true})
    vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down, {noremap = true, silent = true})
    vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up, {noremap = true, silent = true})
    vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right, {noremap = true, silent = true})

    vim.keymap.set("n", "<leader><leader><left>",  require("smart-splits").swap_buf_left, {noremap = true, silent = true})
    vim.keymap.set("n", "<leader><leader><down>",  require("smart-splits").swap_buf_down, {noremap = true, silent = true})
    vim.keymap.set("n", "<leader><leader><up>",    require("smart-splits").swap_buf_up, {noremap = true, silent = true})
    vim.keymap.set("n", "<leader><leader><right>", require("smart-splits").swap_buf_right, {noremap = true, silent = true})

    vim.keymap.set("n", "<leader>vs", ":vs<cr>", {})
    vim.keymap.set("n", "<leader>hs", ":split<cr>", {})
    vim.keymap.set("n", "<leader>sv", ":vs<cr>", {})
    vim.keymap.set("n", "<leader>sh", ":split<cr>", {})
  end
}
