function lightline_filetype()
	local filetype = vim.fn.expand('%:e')

	if filetype ~= '' then
		local devicons = require'nvim-web-devicons'
		local filename = vim.fn.expand('%:t')
		local icon = devicons.get_icon(filename, filetype, { default = true })
		filetype = icon .. ' ' .. filetype
	end

	return filetype
end

vim.g.lightline = {
	colorscheme = 'wombat',
	active = {
		left = {
			{ 'mode', 'paste' },
			{ 'readonly', 'filename', 'modified', 'gitbranch', 'current_func' }
		}
	},
	component_function = {
		gitbranch = 'FugitiveHead',
		current_func = 'cfi#get_func_name',
	},
	component = {
		filetype = '%{v:lua.lightline_filetype()}',
	},
}
