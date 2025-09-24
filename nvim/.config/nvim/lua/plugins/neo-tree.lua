return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			event_handlers = {
				{
					event = "file_open_requested",
					handler = function()
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
		})
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right toggle<CR>", { desc = "Open file tree" })
		vim.keymap.set("n", "<C-b>", ":Neotree buffers reveal float<CR>", { desc = "List open buffers" })
		hide_dotfiles = false
	end,
}
