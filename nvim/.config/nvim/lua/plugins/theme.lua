return {
	-- {
	-- 	"eldritch-theme/eldritch.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		vim.cmd.colorscheme("eldritch")
	-- 	end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- },
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		custom_highlights = function(colors)
			return {
				-- Comment = { fg = colors.flamingo },
				-- TabLineSel = { bg = colors.pink },
				-- CmpBorder = { fg = colors.surface2 },
				-- Pmenu = { bg = colors.none },
				BlinkCmpMenu = { bg = colors.surface0 },
				BlinkCmpDoc = { bg = colors.surface1 },
			}
		end,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}
