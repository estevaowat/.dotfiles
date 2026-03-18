return {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	cmd = { "Mason", "MasonInstall", "MasonUpdate" },
	config = function()
		local cmp_lsp = require("cmp_nvim_lsp")
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(),
			cmp_lsp.default_capabilities()
		)

		require("mason").setup()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"eslint_d",
				"eslint",
				"stylua",
				"html",
				"black",
			},
		})

		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"gopls",
				"marksman",
				"jdtls",
				"pyright",
				"yamlls",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
				["lua_ls"] = function()
					require("lspconfig").lua_ls.setup({
						capabilities = capabilities,
					})
				end,
				["gopls"] = function()
					local lspconfig = require("lspconfig")
					local util = require("lspconfig/util")
					lspconfig.gopls.setup({
						capabilities = capabilities,
						cmd = { "gopls" },
						filetypes = { "go", "gomod", "gowork", "gotmpl" },
						root_dir = util.root_pattern("go.work", "go.mod", ".git"),
						settings = {
							gopls = {
								completeUnimported = true,
								usePlaceholders = true,
								analyses = {
									unusedparams = true,
								},
							},
						},
					})
				end,
				["yamlls"] = function()
					require("lspconfig").yamlls.setup({
						capabilities = capabilities,
						settings = {
							yaml = {
								keyOrdering = false,
								format = {
									enable = true,
								},
								validate = true,
								hover = true,
								completion = true,
								schemas = {
									["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
									["https://json.schemastore.org/kubernetes.json"] = "*.yaml",
								},
							},
						},
					})
				end,
			},
		})
	end,
}
