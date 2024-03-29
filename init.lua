if vim.fn.exists("g:vscode") ~= 0 then
	-- VSCode extension
	require("user.vscode")
else
	-- ordinary neovim
	require("user.options")
	require("user.keymaps")
	require("user.colorscheme")
	-- require("user.cmp")
	require("user.lsp")
	require("user.telescope")
	require("user.treesitter")
	require("user.autopairs")
	require("user.comment")
	require("user.gitsigns")
	require("user.nvim-tree")
	require("user.bufferline")
	require("user.lualine")
	require("user.toggleterm")
	require("user.project")
	require("user.impatient")
	require("user.indentline")
	require("user.alpha")
	require("user.whichkey")
	require("user.autocommands")
	require("user.folds")
end
