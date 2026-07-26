return {
	"olimorris/onedarkpro.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme onedark_dark")
		vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { bg = "none", fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = "none", fg = "#ff0808", bold = true })
		vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { bg = "none", fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder", { bg = "none", fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { fg = "#787c99" })
		vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "TelescopePromptCounter", { fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#000000" })
		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#000000" })
		vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = "#495162" })
		vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { bg = "#ff0808", fg = "#000000" })
		vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { bg = "#ff0808", fg = "#000000" })
		vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#000000" })
		vim.api.nvim_set_hl(0, "ScreenkeyTitle", { fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "Cursor", { bg = "#ff0808" })
		vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = "#ff0808" })
		vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#ff0808" })
	end,
}
