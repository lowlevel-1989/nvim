--[[
Render Markdown
]]
return {
  "MeanderingProgrammer/render-markdown.nvim",
  enabled = vim.env.TERM ~= "linux",
  opts = {},
  config = function (plugin)
    require("render-markdown").setup(plugin.opts)

    vim.cmd("highlight RenderMarkdownH3Bg	guifg=#7e9cd8 guibg=#262632")
    vim.cmd("highlight RenderMarkdownH4Bg	guifg=#7e9cd8 guibg=#23232f")
  end

}
