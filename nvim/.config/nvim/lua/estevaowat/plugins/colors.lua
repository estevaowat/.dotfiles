return {
	"catppuccin/nvim",
	name = "catppuccin",
	opts = {
		transparent_background = true,
		gamma = 90,
	},
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			background = {
				dark = "mocha",
			},
			transparent_background = true,
			dim_inactive = {
				enabled = true,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
	integrations = {
		mason = true,
		telescope = {
			enabled = true,
			style = "nvchad",
		},
	},
}
