--[[
Gestor de paquetes
--]]
return {
  "williamboman/mason.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-lint",
    "mhartington/formatter.nvim",
  },
  config = function()
    vim.keymap.set('n', 'K',          vim.lsp.buf.hover,           {desc = "LSP show help"})
    vim.keymap.set('n', 'gD',         vim.lsp.buf.declaration,     {desc = "LSP go declaration"})
    vim.keymap.set('n', 'gd',         vim.lsp.buf.definition,      {desc = "LSP go definition"})
    vim.keymap.set('n', 'gt',         vim.lsp.buf.type_definition, {desc = "LSP go type_definition"})
    vim.keymap.set('n', 'gi',         vim.lsp.buf.implementation,  {desc = "LSP go implementation"})
    vim.keymap.set('n', 'gr',         vim.lsp.buf.references,      {desc = "LSP show references"})
    vim.keymap.set('n', 'gc',         vim.lsp.buf.incoming_calls,  {desc = "LSP show incoming_calls"})
    vim.keymap.set('n', 'rs',         vim.lsp.buf.rename,          {desc = "LSP symbol rename"})
    vim.keymap.set('n', '<leader>dp', vim.diagnostic.open_float,   {desc = "LSP show diagnostic"})

    require("mason").setup({})
    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
        lua_ls = function()
          require("lspconfig")["lua_ls"].setup({
            settings = {
              Lua = {
                diagnostics = {
                  globals = {"vim",},
                },
              },
            }
          })
        end,
      },
    })
  end
}
