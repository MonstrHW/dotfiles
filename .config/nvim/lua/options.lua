local function setopt(mode, opt, value)
	vim[mode][opt] = value
	if mode ~= 'o' then
		vim.o[opt] = value
	end
end

vim.g.mapleader = ' '

setopt('o', 'termguicolors', true)

setopt('bo', 'tabstop', 4)
setopt('bo', 'shiftwidth', 4)
setopt('o', 'autoindent', true)
setopt('o', 'smartindent', true)
setopt('o', 'cindent', true)
setopt('o', 'breakindent', true)

setopt('o', 'clipboard', 'unnamedplus')
setopt('o', 'incsearch', true)
setopt('o', 'ignorecase', true)
setopt('o', 'showmode', false)
setopt('o', 'ruler', false)
setopt('o', 'showcmd', true)
setopt('o', 'swapfile', false)
setopt('o', 'linebreak', true)

setopt('o', 'diffopt', 'internal,filler,closeoff,vertical')

setopt('o', 'spelllang', 'en_us,ru,uk')

setopt('o', 'mouse', 'a')
setopt('o', 'hidden', true)
setopt('o', 'updatetime', 300)

setopt('o', 'shortmess', 'Sc')

setopt('o', 'autoread', true)

setopt('wo', 'number', true)
setopt('wo', 'relativenumber', true)
setopt('wo', 'signcolumn', 'yes')

setopt('o', 'cursorline', true)

setopt('o', 'timeoutlen', 500)

setopt('o', 'keywordprg', ':help')
