return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        automatic_enable = false,
        ensure_installed = { "lua_ls", "gopls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      local opts = {
        capabilities = capabilities,
      }
      vim.lsp.config('lua_ls', opts)
      vim.lsp.config('gopls', {
        capabilities = capabilities,
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
              unusedParams = true,
              modernize = false
            },
          },
        },
      })
      vim.lsp.enable('gopls')
      vim.lsp.enable('lua_ls')
      -- lspconfig.rust_analyzer.setup(opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      -- vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
      vim.keymap.set("n", "ga", vim.lsp.buf.code_action, { desc = "Code actions" })
      vim.keymap.set("n", "ge", vim.diagnostic.open_float, { desc = "Open error" })
      vim.keymap.set("n", "gR", vim.lsp.buf.rename, { desc = "Rename symbol" })
    end,
  },
}
