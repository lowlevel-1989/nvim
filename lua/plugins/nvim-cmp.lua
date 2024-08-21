--[[
Autocompletado
--]]
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-cmdline",  -- autocompletado en la linea de comando de nvim
    "hrsh7th/cmp-buffer",   -- autocompletado dentro de los buffers
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp", -- Autocompletado para lsp
  },
  config = function(plugin)
    local cmp = require("cmp")

    local opts = {
      sources = cmp.config.sources({
        { name = "buffer"   },
        { name = "path"     },
        { name = "nvim_lsp" },
      }),
      mapping = cmp.mapping.preset.insert({
        ["k"]         = cmp.mapping.scroll_docs(-4),
        ["j"]         = cmp.mapping.scroll_docs(4),
        ["<cr>"]      = cmp.mapping.confirm({ select = true })
      })
    }
    cmp.setup(opts)

    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {{ name = "buffer" }}
    })

    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({{ name = "cmdline" }}),
      matching = { disallow_symbol_nonprefix_matching = false },
    })
  end
}
