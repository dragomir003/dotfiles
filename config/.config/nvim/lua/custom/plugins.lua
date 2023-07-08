require"lazy".setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	"nvim-treesitter/nvim-treesitter",
	"lewis6991/gitsigns.nvim",
	'nvim-lua/plenary.nvim',
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep",
			"nvim-telescope/telescope-fzf-native.nvim",
			"sharkdp/fd",
		},
    },

	{"ellisonleao/glow.nvim", config = true, cmd = "Glow"},
	{ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' },

	'ThePrimeagen/harpoon',
	{ 'christoomey/vim-tmux-navigator', lazy = false },

	-- LSP
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
})

require('lualine').setup {
	options = {
		theme = 'auto',
	},
}

require('nvim-treesitter.configs').setup({
	highlight = {
		enable = true,
	}
})

require'harpoon'.setup{}

vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
