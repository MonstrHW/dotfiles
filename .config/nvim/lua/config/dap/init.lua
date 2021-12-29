require('config/dap/go')

local unique_listener_name = 'dap-config'
local dap = require('dap')
dap.listeners.after['launch'][unique_listener_name] = function(session, body)
	require("dapui").open()
end

dap.listeners.after['event_terminated'][unique_listener_name] = function(session, body)
	require("dapui").close()
end

vim.fn.sign_define('DapStopped', {texthl='', linehl='', numhl=''})
