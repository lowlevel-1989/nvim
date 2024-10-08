--[[
Gestor de paquetes para LSP, DAP, formatter, Linter
]]
return {
  "williamboman/mason.nvim",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      dependencies = {
        "neovim/nvim-lspconfig",
      }
    },
    {
      "jay-babu/mason-nvim-dap.nvim",
      dependencies = {
        "rcarriga/nvim-dap-ui",
        dependencies = {
          "mfussenegger/nvim-dap",
          "nvim-neotest/nvim-nio",
          "theHamsta/nvim-dap-virtual-text",
        },
      },
    },
    "mfussenegger/nvim-lint",
    "mhartington/formatter.nvim",
  },
  enabled = vim.env.TERM ~= "linux",
  config = function()
    vim.keymap.set("n", "K",          vim.lsp.buf.hover,           {desc = "LSP show help"})
    vim.keymap.set("n", "gD",         vim.lsp.buf.declaration,     {desc = "LSP go declaration"})
    vim.keymap.set("n", "gd",         vim.lsp.buf.definition,      {desc = "LSP go definition"})
    vim.keymap.set("n", "gt",         vim.lsp.buf.type_definition, {desc = "LSP go type_definition"})
    vim.keymap.set("n", "gi",         vim.lsp.buf.implementation,  {desc = "LSP go implementation"})
    vim.keymap.set("n", "gr",         vim.lsp.buf.references,      {desc = "LSP show references"})
    vim.keymap.set("n", "gc",         vim.lsp.buf.incoming_calls,  {desc = "LSP show incoming_calls"})
    vim.keymap.set("n", "rs",         vim.lsp.buf.rename,          {desc = "LSP symbol rename"})
    vim.keymap.set("n", "<leader>dp", vim.diagnostic.open_float,   {desc = "LSP show diagnostic"})

    local dap   = require("dap")
    local dapui = require("dapui")

    dapui.setup({})
    require("nvim-dap-virtual-text").setup({})

    local function conditional_breakpoint()
      dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
    end

    vim.keymap.set("n", "<leader>dt", dapui.toggle,           {desc = "DAP toggle"})
    vim.keymap.set("n", "<leader>ds", dap.continue,           {desc = "DAP new"})
    vim.keymap.set("n", "<leader>dc", dap.continue,           {desc = "DAP continue"})
    vim.keymap.set("n", "<leader>dn", dap.step_into,          {desc = "DAP step into"})
    vim.keymap.set("n", "<leader>dN", dap.step_over,          {desc = "DAP step over"})
    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint,  {desc = "DAP toggle breakpoint"})
    vim.keymap.set("n", "<leader>dB", conditional_breakpoint, {desc = "DAP conditional breakpoint"})

    require("mason").setup({})
    require("mason-nvim-dap").setup({
      handlers = {
        function(config)
          -- all sources with no handler get passed here

          -- Keep original functionality
          require("mason-nvim-dap").default_setup(config)
        end,


        python = function(config)

          local workspace = vim.fn.getcwd()
          local venv_path = os.getenv('VIRTUAL_ENV') or os.getenv('CONDA_PREFIX')

          local pythonPath = nil
          if venv_path then
            pythonPath = venv_path .. "/bin/python"
          end

          require("mason-nvim-dap").default_setup(config)

          dap.configurations.python = config.configurations

          table.insert(dap.configurations.python, {
            type       = "python",
            request    = "launch",
            name       = "Django: launch app/manage.py",
            program    = workspace .. "/app/manage.py",
            args       = { "runserver", "--noreload" },
            console    = "integratedTerminal",
            pythonPath = pythonPath,
            django     = true,
          })

          table.insert(dap.configurations.python, {
            type       = "python",
            request    = "launch",
            name       = "Django: launch manage.py",
            program    = workspace .. "/manage.py",
            args       = { "runserver", "--noreload" },
            console    = "integratedTerminal",
            pythonPath = pythonPath,
            django     = true,
          })

          table.insert(dap.configurations.python, {
            type       = "python",
            request    = "launch",
            name       = "Django: launch file",
            program    = "${file}",
            args       = { "runserver", "--noreload" },
            console    = "integratedTerminal",
            pythonPath = pythonPath,
            django     = true,
          })

        end,
      },
    })
    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
        volar = function ()
          -- no hacer nada, se instala como plugin de tsserver
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
