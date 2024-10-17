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
			-- local eslint = require("eslint")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					-- require("none-ls.diagnostics.eslint_d"),
				},
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

			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format buffer" })
		end,
	},
}
