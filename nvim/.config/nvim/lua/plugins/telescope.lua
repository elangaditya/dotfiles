return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				defaults = {
					file_ignore_patterns = {
						"node_modules",
						"dist",
            "mocks",
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep directory" })
			vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, { desc = "Old files" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "View buffers" })

      vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "Find references" })
      vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Go to definition" })
      vim.keymap.set("n", "gD", builtin.lsp_type_definitions, { desc = "Go to type definition" })
      vim.keymap.set("n", "gi", builtin.lsp_implementations, { desc = "Go to implementation" })
			require("telescope").load_extension("ui-select")
			defaults = {
				vimgrep_arguments = {
					"--hidden",
				},
			}
		end,
	},
}
