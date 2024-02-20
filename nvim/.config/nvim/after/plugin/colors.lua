local function colorizeBackground(color)
	color = color or "tokyodark"
	vim.cmd.colorscheme(color)

end

colorizeBackground()
