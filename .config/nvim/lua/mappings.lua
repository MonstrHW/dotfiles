local map = vim.api.nvim_set_keymap
local options = {noremap = true, silent = true}

-- Close any window
map('n', '<C-q>', '<Cmd>lua require("stock").close_any_window()<CR>', options)

-- Quicker window movement
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)
map('n', '<C-l>', '<C-w>l', options)

-- Create splits
map('n', '<A-h>', '<Cmd>below vsp<CR><C-w>h', options)
map('n', '<A-j>', '<Cmd>sp<CR><C-w>j', options)
map('n', '<A-k>', '<Cmd>below sp<CR><C-w>k', options)
map('n', '<A-l>', '<Cmd>vsp<CR><C-w>l', options)
map('n', '<A-q>', '<Cmd>close<CR>', options)

-- Resize windows
map('n', '<C-A-h>', '<Cmd>vertical resize +5<CR>', options)
map('n', '<C-A-l>', '<Cmd>vertical resize -5<CR>', options)
map('n', '<C-A-j>', '<Cmd>resize +5<CR>', options)
map('n', '<C-A-k>', '<Cmd>resize -5<CR>', options)

-- Tab manipulations
map('n', '<A-e>', '<Cmd>tabedit<CR>', options)
map('n', '<A-n>', '<Cmd>tabn<CR>', options)
map('n', '<A-p>', '<Cmd>tabp<CR>', options)

-- Save file
map('', '<C-s>', '<Esc>:w<CR>', options)

vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
	pattern = '*',
	callback = function()
		require("stock").map_make_command()
	end
})
