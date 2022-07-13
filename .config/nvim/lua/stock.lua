M = {}

function M.close_any_window()
	local api = vim.api

	if #api.nvim_list_wins() == 1 then
		api.nvim_buf_delete(0, {})
		return
	end

	api.nvim_win_close(0, true)
end

function M.search_in_config()
	require('telescope.builtin').find_files({
		prompt_title = "config",
		shorten_path = false,
		cwd = "~/.config/nvim",
	})
end

function M.map_make_command()
	local make_commands = {
		['go'] = '<Cmd>!go run *.go<CR>',
		['py'] = '<Cmd>!python3 %<CR>',
	}

	local file_type = vim.fn.expand('%:e')

	if make_commands[file_type] ~= nil then
		local buf_map = vim.api.nvim_buf_set_keymap
		buf_map(0, '', '<Leader>m', make_commands[file_type], {noremap = true, silent = true})
	end
end

return M
