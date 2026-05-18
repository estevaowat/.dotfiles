return {
	"nvim-lualine/lualine.nvim",
	dependencies = "kyazdani42/nvim-web-devicons",
	config = function()
		local function oil_current_dir()
			if vim.bo.filetype ~= "oil" then
				return nil
			end
			local buf_name = vim.api.nvim_buf_get_name(0)
			local dir = buf_name:gsub("^oil:///", ""):gsub("/$", "")
			return vim.fn.fnamemodify(dir, ":~")
		end

		require("lualine").setup({
			options = {
				theme = "nord",
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
				lualine_b = { "filename", "branch" },
				lualine_c = {
					{
						oil_current_dir,
						cond = function()
							return vim.bo.filetype == "oil"
						end,
					},
					"%=", --[[ add your center compoentnts here in place of this comment ]]
				},
				lualine_x = {},
				lualine_y = { "filetype", "progress" },
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {},
			extensions = {},
		})
	end,
}
