return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>", {desc = "Open file tree"})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {desc = "List open buffers"})
	end,
}
