local o = vim.opt

o.termguicolors = true

o.tabstop = 4
o.shiftwidth = 4
o.autoindent = true
o.smartindent = true
o.cindent = true
o.breakindent = true

o.clipboard = 'unnamedplus'
o.incsearch = true
o.ignorecase = true
o.showmode = false
o.ruler = false
o.showcmd = true
o.swapfile = false
o.linebreak = true

o.diffopt = {'internal', 'filler', 'closeoff', 'vertical'}

o.spelllang = {'en_us', 'ru'}

o.mouse = 'a'
o.hidden = true
o.updatetime = 300

o.shortmess = 'Sc'

o.autoread = true

o.number = true
o.relativenumber = true
o.signcolumn = 'yes'

o.cursorline = true

o.timeoutlen = 500

o.keywordprg = ':help'

vim.g.mapleader = ' '

vim.api.nvim_create_autocmd('FileType', {
	pattern = 'gitcommit',
	callback = function()
		vim.opt_local.spell = true
	end
})
