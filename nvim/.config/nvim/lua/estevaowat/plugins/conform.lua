return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			format_on_save = {
				timeout_ms = 1000,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				lua = { "stylua" },
				typescript = { "prettier", stop_after_first = true },
				typescriptreact = { "prettier", stop_after_first = true },
				javascript = { "prettier", stop_after_first = true },
				javascriptreact = { "prettier", stop_after_first = true },
				go = { "goimports", "gofmt" },

				["*"] = { "codespell" },
				["_"] = { "trim_whitespace" },
			},
		})
	end,
}
