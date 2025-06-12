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
        ensure_installed = { "lua_ls", "ts_ls", "gopls", "clangd", "prismals" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local opts = {
        capabilities = capabilities,
      }
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup(opts)
      lspconfig.gopls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
              unusedParams = true,
            }
          },
        },
      })
      lspconfig.ts_ls.setup(opts)
      lspconfig.clangd.setup(opts)
      lspconfig.prismals.setup(opts)
      -- lspconfig.rust_analyzer.setup(opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
      vim.keymap.set("n", "ga", vim.lsp.buf.code_action, { desc = "Code actions" })
      vim.keymap.set("n", "ge", vim.diagnostic.open_float, { desc = "Open error" })
      vim.keymap.set("n", "gR", vim.lsp.buf.rename, { desc = "Rename symbol" })
    end,
  },
}
