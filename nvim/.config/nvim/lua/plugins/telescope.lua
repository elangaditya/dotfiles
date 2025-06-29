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
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep directory" })
			vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, { desc = "Old files" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "View buffers" })
			require("telescope").load_extension("ui-select")
			defaults = {
				vimgrep_arguments = {
					"--hidden",
				},
			}
		end,
	},
}
