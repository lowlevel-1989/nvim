--[[
Arbol de carpeta
]]
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    renderer = {
      icons = {
        web_devicons = {
          file = {
            enable = vim.env.TERM ~= 'linux',
            color = true,
          },
          folder = {
            enable = vim.env.TERM ~= 'linux',
            color = true,
          },
        },
        glyphs = {
          default  = vim.env.TERM ~= 'linux' and "" or "·",
          symlink  = "",
          bookmark = "󰆤",
          modified = "●",
          hidden   = "󰜌",
          folder = {
            arrow_closed = vim.env.TERM ~= 'linux' and "" or "+",
            arrow_open   = vim.env.TERM ~= 'linux' and "" or "-",
            default      = vim.env.TERM ~= 'linux' and "" or "",
            open         = vim.env.TERM ~= 'linux' and "" or "",
            empty        = vim.env.TERM ~= 'linux' and "" or "",
            empty_open   = vim.env.TERM ~= 'linux' and "" or "",
            symlink      = vim.env.TERM ~= 'linux' and "" or "",
            symlink_open = vim.env.TERM ~= 'linux' and "" or "",
          },
          git = {
            unstaged  = vim.env.TERM ~= 'linux' and "✗" or "*",
            staged    = "✓",
            unmerged  = "",
            renamed   = "➜",
            untracked = vim.env.TERM ~= 'linux' and "★" or "~",
            deleted   = "",
            ignored   = "◌",
          },
        },
      },
    },
  },
  config = function (plugin)
    require("nvim-tree").setup(plugin.opts)

    vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<cr>", { desc = "tree toggle"})
  end
}
