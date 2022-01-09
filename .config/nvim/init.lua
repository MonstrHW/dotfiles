require('options')
require('mappings')

vim.cmd('autocmd BufWritePost init.lua PackerCompile')

local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	local execute = vim.api.nvim_command
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

require('packer').startup(
	function(use)
		use 'wbthomason/packer.nvim'

		use {
			'neovim/nvim-lspconfig',
			config = function() require('config/lsp') end
		}
		use {
			'hrsh7th/nvim-cmp',
			requires = {
				'hrsh7th/cmp-nvim-lsp',
				'hrsh7th/cmp-buffer',
				'hrsh7th/cmp-path',
				'onsails/lspkind-nvim',
			},
			config = function() require("config/cmp") end,
		}

		use {
			'nvim-treesitter/nvim-treesitter',
			config = function() require('config/treesitter') end,
			run = ':TSUpdate'
		}
		use {
			'christianchiarulli/nvcode-color-schemes.vim',
			config = function() vim.cmd [[ colorscheme nvcode ]] end
		}

		use{
			'windwp/nvim-autopairs',
			config = function() require('nvim-autopairs').setup{} end
		}
		use 'tpope/vim-surround'

		use 'RRethy/vim-illuminate'

		use 'kyazdani42/nvim-web-devicons'

		use {
			'kyazdani42/nvim-tree.lua',
			config = function() require('config/nvim_tree') end
		}

		use {
			'folke/which-key.nvim',
			config = function() require('config/which_key') end,
		}

		use {
			'nvim-telescope/telescope.nvim',
			requires = {'nvim-lua/plenary.nvim'},
			config = function() require('config/telescope') end,
		}

		use { 'itchyny/lightline.vim', config = function() require('config/lightline') end }

		use {
			'tpope/vim-fugitive',
			config = function()
				vim.cmd([[
				augroup vimdiff
					autocmd!

					autocmd ColorScheme * highlight DiffAdd guibg=#004212 guifg=NONE
					autocmd ColorScheme * highlight DiffDelete guibg=#3D0007 guifg=#3D0007

					autocmd ColorScheme * highlight DiffChange guibg=#2B5B77 guifg=NONE
					"autocmd ColorScheme * highlight DiffChange guibg=#0071C5 guifg=NONE
					autocmd ColorScheme * highlight DiffText guifg=#8fbfdc guibg=#000000 gui=reverse
				augroup END
				]])
			end
		}
		use {
			'lewis6991/gitsigns.nvim',
			config = function() require('config/gitsigns') end,
		}

		use {
			'mfussenegger/nvim-dap',
			config = function() require('config/dap') end,
		}
		use {
			'rcarriga/nvim-dap-ui',
			config = function() require("dapui").setup() end
		}
	end
)
