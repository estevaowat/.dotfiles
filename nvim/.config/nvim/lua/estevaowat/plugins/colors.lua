return {
	"ellisonleao/gruvbox.nvim",
	opts = {
		transparent_background = true,
		gamma = 90,
	},
	config = function()
		vim.o.background = "dark" -- or "light" for light mode
		vim.cmd.colorscheme("gruvbox")
	end,
}
