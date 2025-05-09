return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-cmdline",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"j-hui/fidget.nvim",
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
		local cmp = require("cmp")
		local cmp_lsp = require("cmp_nvim_lsp")
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(),
			cmp_lsp.default_capabilities()
		)
		require("fidget").setup({
			notification = {
				window = {
					winblend = 0,
				},
			},
		})
		require("mason").setup()
		require("mason-tool-installer").setup({
			-- formatter
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
			-- language servers
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"gopls",
				"marksman",
				"jdtls",
				"pyright",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
				["lua_ls"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.lua_ls.setup({
						capabilities = capabilities,
						settings = {
							Lua = {
								runtime = { version = "Lua 5.1" },
								diagnostics = {
									globals = {
										"vim",
										"it",
										"describe",
										"before_each",
										"after_each",
									},
								},
							},
						},
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
			},
		})

		local luasnip = require("luasnip")

		require("luasnip").filetype_extend("typescript", { "tsdoc" })
		require("luasnip").filetype_extend("javascript", { "jsdoc" })
		require("luasnip").filetype_extend("lua", { "luadoc" })
		require("luasnip").filetype_extend("python", { "pydoc" })
		require("luasnip").filetype_extend("go", { "godoc" })
		require("luasnip").filetype_extend("java", { "javadoc" })
		require("luasnip").filetype_extend("sh", { "shelldoc" })

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
			}),
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						if luasnip.expandable() then
							luasnip.expand()
						else
							cmp.confirm({
								select = true,
								behavior = cmp.ConfirmBehavior.Replace,
							})
						end
					else
						fallback()
					end
				end),

				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.locally_jumpable(1) then
						luasnip.jump(1)
					else
						fallback()
					end
				end, { "i", "s" }),

				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.locally_jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
				["<Up>"] = cmp.mapping.select_prev_item(),
				["<Down>"] = cmp.mapping.select_next_item(),
			}),
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

		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, opts)
		vim.keymap.set("n", "gD", function()
			vim.lsp.buf.declaration()
		end, opts)
		vim.keymap.set("n", "gt", function()
			vim.lsp.buf.type_definition()
		end, opts)
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, opts)
		vim.keymap.set("n", "<leader>vws", function()
			vim.lsp.buf.workspace_symbol()
		end, opts)
		vim.keymap.set("n", "<leader>vd", function()
			vim.diagnostic.open_float()
		end, opts)
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_next()
		end, opts)
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_prev()
		end, opts)
		vim.keymap.set("n", "<leader>ca", function()
			vim.lsp.buf.code_action()
		end, opts)
		vim.keymap.set("n", "<leader>gr", function()
			require("telescope.builtin").lsp_references()
		end, additional_opts)
		vim.keymap.set("n", "<leader>rn", function()
			vim.lsp.buf.rename()
		end, opts)
		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, opts)
	end,
}
