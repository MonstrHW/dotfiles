local cmp = require("cmp")
local lspkind = require("lspkind")
local maps = cmp.mapping

cmp.setup {
	mapping = {
		["<Tab>"]     = maps.select_next_item(),
		["<S-Tab>"]   = maps.select_prev_item(),
		["<C-Space>"] = maps.complete(),
		["<CR>"]      = maps.confirm(),
	},
	sources = {
		{name = "nvim_lsp" },
		{name = "buffer"   },
		{name = "path"     },
	},
	formatting = {
		format = lspkind.cmp_format(),
	},
}
