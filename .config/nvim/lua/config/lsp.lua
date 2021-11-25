local function executable(command)
	return vim.fn.executable(command) ~= 0
end

local lspconfig = require'lspconfig'

if executable('pyright') then
	lspconfig.pyright.setup{}
end

if executable('gopls') then
	lspconfig.gopls.setup{}
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if executable('vscode-html-language-server') then
	lspconfig.html.setup{
		capabilities = capabilities,
	}
end

if executable('vscode-css-language-server') then
	lspconfig.cssls.setup{
		capabilities = capabilities,
	}
end

require('config/lsp_lua')
