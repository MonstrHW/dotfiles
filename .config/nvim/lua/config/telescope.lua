local actions = require 'telescope.actions'

require('telescope').setup {
	defaults = {
		vimgrep_arguments = {'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'},

		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.close,
			},
			n = {
				["<C-q>"] = actions.close,
			}
		}
	}
}
