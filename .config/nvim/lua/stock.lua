M = {}

function M.close_any_window()
	local api = vim.api

	if #api.nvim_list_wins() == 1 then
		api.nvim_buf_delete(0, {})
		return
	end

	api.nvim_win_close(0, true)
end

return M

-- stock | util ???
