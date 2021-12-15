require 'nvim-treesitter.configs'.setup {
	ensure_installed = {"java", "lua", "bash", "python", "php", "go", "html", "css", "javascript"},
	highlight = {
		enable = true,
		disable = { "html", "css" }
	}
}
