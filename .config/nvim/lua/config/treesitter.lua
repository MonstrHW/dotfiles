require 'nvim-treesitter.configs'.setup {
	ensure_installed = {"java", "lua", "bash", "python", "php", "go", "html", "css"},
	highlight = {
		enable = true,
		disable = { "html", "css" }
	}
}
