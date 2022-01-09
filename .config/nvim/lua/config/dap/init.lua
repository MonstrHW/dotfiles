require('config/dap/go')

local dap = require("dap")
local dapui = require("dapui")
local unique_listener_name = 'dap-config'

dap.listeners.after.event_initialized[unique_listener_name] = function() dapui.open() end
dap.listeners.before.event_terminated[unique_listener_name] = function() dapui.close() end
dap.listeners.before.event_exited[unique_listener_name] = function() dapui.close() end

vim.fn.sign_define('DapStopped', {texthl='', linehl='', numhl=''})
