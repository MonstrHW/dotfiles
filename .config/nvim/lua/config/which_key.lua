local wk = require('which-key')

wk.setup {
	plugins = {
		marks = false,
		registers = false,
		spelling = {
			enabled = false,
		},
		presets = {
			operators = false,
			motions = false,
			text_objects = false,
			windows = false,
			nav = false,
			z = false,
			g = false,
		},
	},
	icons = {
		breadcrumb = '»',
		separator = '➜',
		group = '+',
	},
	show_help = false,
}

local maps = {
	e = {'<Cmd>NvimTreeFindFileToggle<CR>', 'file tree'},
	n = {'<Cmd>nohlsearch<CR>', 'no hl search'},
	b = {'<Cmd>Telescope buffers<CR>', 'buffers'},

	a = {
		name = 'actions',
		s = {'<Cmd>set spell!<CR>', 'toggle spell'},
		w = {'<Cmd>set wrap!<CR>', 'toggle wrap'}
	},

	l = {
		name = 'lsp',
		d = {'<Cmd>lua vim.lsp.buf.definition()<CR>', 'definition'},
		D = {'<Cmd>lua vim.lsp.buf.declaration()<CR>', 'declaration'},
		t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', 'type definition'},
		i = {'<cmd>lua vim.lsp.buf.implementation()<CR>', 'implementation'},
		r = {'<cmd>lua vim.lsp.buf.references()<CR>', 'references'},
		R = {'<cmd>lua vim.lsp.buf.rename()<CR>', 'rename'},
		f = {'<cmd>lua vim.lsp.buf.formatting()<CR>', 'format'}
	},

	g = {
		name = 'git',
		d = {'<Cmd>Gdiff<CR>', 'h diff'},
		D = {'<Cmd>Ghdiffsplit<CR>', 'v diff'},
		s = {'<Cmd>Gstatus<CR>', 'status'},
		l = {'<Cmd>Glog<CR>', 'log'},
		L = {'<Cmd>Glog --all<CR>', 'log all'},
		b = {'<Cmd>Git blame<CR>', 'blame'},
		j = {'<Plug>(GitGutterNextHunk)', 'next hunk'},
		k = {'<Plug>(GitGutterPrevHunk)', 'prev hunk'},
		u = {'<Plug>(GitGutterUndoHunk)', 'undo hunk'},
		['1'] = {'<Cmd>diffget 1 <bar> diffupdate<CR>', 'merge from left'},
		['2'] = {'<Cmd>diffget 2 <bar> diffupdate<CR>', 'merge from middle'},
		['3'] = {'<Cmd>diffget 3 <bar> diffupdate<CR>', 'merge from right'},
	},

	s = {
		name = 'search',
		f = {'<Cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>', 'files'},
		a = {'<Cmd>Telescope live_grep<CR>', 'live search'},
		c = {'<Cmd>lua require("stock").search_in_config()<CR>', 'config'},
	},

	d = {
		name = 'debug',
		c = {'<Cmd>lua require"dap".continue()<CR>', 'continue'},
		s = {'<Cmd>lua require"dap".step_into()<CR>', 'step'},
		b = {'<Cmd>lua require"dap".toggle_breakpoint()<CR>', 'breakpoint'},
		B = {'<Cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', 'breakpoint with condition'}
	}
}

wk.register(maps, { prefix = '<Leader>' })
