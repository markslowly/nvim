if vim.g.vscode then
	-- VSCode extension
else
	-- ordinary Neovim
	require "mark_slowly/options"
	require "mark_slowly/keymaps"
	require "mark_slowly/plugins"
	require "mark_slowly/nvim-tree"
end
