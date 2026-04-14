return {
  {
    "MunifTanjim/eslint.nvim",
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
      -- local eslint = require("eslint")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          -- null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.gofumpt,
          -- null_ls.builtins.formatting.goimports_reviser,
          -- null_ls.builtins.formatting.golines,
          -- require("none-ls.diagnostics.eslint_d"),
        },
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
              group = augroup,
              buffer = bufnr,
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ async = false, bufnr = bufnr })
              end,
            })
          end
        end,
      })

      -- eslint.setup({
      -- 	bin = "eslint_d", -- or `eslint_d`
      -- 	code_actions = {
      -- 		enable = true,
      -- 		apply_on_save = {
      -- 			enable = true,
      -- 			types = { "directive", "problem", "suggestion", "layout" },
      -- 		},
      -- 		disable_rule_comment = {
      -- 			enable = true,
      -- 			location = "separate_line", -- or `same_line`
      -- 		},
      -- 	},
      -- 	diagnostics = {
      -- 		enable = true,
      -- 		report_unused_disable_directives = false,
      -- 		run_on = "type", -- or `save`
      -- 	},
      -- })

      vim.keymap.set("n", "gf", vim.lsp.buf.format, { desc = "Format buffer" })
    end,
  },
}
