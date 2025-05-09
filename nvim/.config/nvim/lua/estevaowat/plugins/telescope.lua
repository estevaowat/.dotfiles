return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files using telescope" })
		vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "find files in a git project using telescope" })
		vim.keymap.set("n", "<leader>fk", builtin.keymaps, { silent = true })
		vim.keymap.set("n", "<leader>fr", builtin.live_grep, { desc = "find content inside files using telescope" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>fs", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
	end,
}
