return {
	"stevearc/oil.nvim",
	opts = {
		default_file_explorer = true,
		view_options = {
			show_hidden = true,
			-- You can also customize what is considered a hidden file
			-- is_hidden_file = function(name, bufnr)
			--   return vim.startswith(name, '.')
			-- end,
			-- is_always_hidden = function(name, bufnr)
			--   return false -- Set to true to always hide specific files
			-- end,
		},
	},
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
}
