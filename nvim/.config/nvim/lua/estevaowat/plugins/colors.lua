return {
	"tiagovla/tokyodark.nvim",
	opts = {
		transparent_background = true,
		gamma = 90,
	},
	config = function()
		vim.cmd.colorscheme("tokyodark")
	end,
}
