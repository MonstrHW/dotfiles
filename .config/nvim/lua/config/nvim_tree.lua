vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_disable_window_picker = 1

require'nvim-tree'.setup {
	git = {
		enable = false
	},
	view = {
        relativenumber = true,
	}
}
