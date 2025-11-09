local function enable_transparency()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "LazyNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "MasonNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
end
return {
	{
		"folke/tokyonight.nvim",
		config = function()
			vim.cmd.colorscheme("tokyonight")
			enable_transparency()
		end,
	},
	-- {
	-- 	"sainnhe/sonokai",
	-- 	config = function()
	-- 		vim.g.sonokai_transparent_background = "1"
	-- 		vim.g.sonokai_enable_italic = "1"
	-- 		vim.g.sonokai_style = "andromeda"
	-- 		vim.cmd.colorscheme("sonokai")
	--                        enable_transparency()
	-- 	end,
	-- },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "tokyonight",
		},
	},
}
