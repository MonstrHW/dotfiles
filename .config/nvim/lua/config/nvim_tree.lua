require'nvim-tree'.setup {
	view = {
        relativenumber = true,
	},
	renderer = {
		indent_markers = {
			enable = true
		}
	},
	git = {
		enable = false
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false
			}
		}
	}
}
