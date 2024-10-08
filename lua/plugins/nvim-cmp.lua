--[[
Autocompletado
]]
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-cmdline",   -- Autocompletado en la linea de comando de nvim
    "hrsh7th/cmp-buffer",    -- Autocompletado dentro de los buffers
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",  -- Autocompletado para lsp
    "brenoprata10/nvim-highlight-colors", -- Autocompletado y preview de color
    {
      "L3MON4D3/LuaSnip",              -- engine snippets
      build = "make install_jsregexp",
    },
    "rafamadriz/friendly-snippets",  -- Los snippets
    "saadparwaiz1/cmp_luasnip",      -- Asignar el sources de snippets
  },
  config = function(plugin)
    local cmp = require("cmp")

    -- carga los friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    require("nvim-highlight-colors").setup({
      render = vim.env.TERM ~= "linux" and "virtual" or "background",
      virtual_symbol_prefix = " ",
      virtual_symbol_suffix = "",
      virtual_symbol_position = "eow",
      enable_tailwind = true,
    })

    -- NOTE: codeium no se esta utilizando de momento, ya que se esta
    -- utilizando la version de vim, porque la version de nvim no soporta
    -- aun para habilitar y desactivar la ia y no quiero que se filtren mis
    -- datos
    local opts = {
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end
      },
      sources = cmp.config.sources({
        { name = "buffer"   },
        { name = "path"     },
        { name = "nvim_lsp" },
        { name = "codeium"  },
        { name = "luasnip"  },
      }),
      mapping = cmp.mapping.preset.insert({
        ["k"]         = cmp.mapping.scroll_docs(-4),
        ["j"]         = cmp.mapping.scroll_docs(4),
        ["<cr>"]      = cmp.mapping.confirm({ select = true })
      }),
      formatting = {
        format = require("nvim-highlight-colors").format
      },
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
