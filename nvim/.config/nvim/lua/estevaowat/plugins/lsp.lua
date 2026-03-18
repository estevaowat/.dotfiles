return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"j-hui/fidget.nvim",
	},
	config = function()
		require("fidget").setup({
			notification = {
				window = {
					winblend = 0,
				},
			},
		})

		vim.diagnostic.config({
			virtual_text = true,
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = "always",
				header = "",
				prefix = "",
			},
		})

		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
		vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover definition" })
		vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, { desc = "Workspace symbol" })
		vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, { desc = "Open float" })
		vim.keymap.set("n", "[d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
		vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
		vim.keymap.set("n", "<leader>gr", function()
			require("telescope.builtin").lsp_references()
		end, { desc = "LSP references" })
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
		vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, { desc = "Signature help" })
	end,
}
