require"lazy".setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	{
		-- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate',
	},
	"lewis6991/gitsigns.nvim",
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep",
			"nvim-telescope/telescope-fzf-native.nvim",
			"sharkdp/fd",
		},
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
			animate = { enabled = true },
			bigfile = {
				enabled = true,
				notify = true,
			},
			dashboard = { enabled = true },
			dim = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			picker = { enabled = true },
			notifier = { enabled = true },
			notify = { enabled = true },
			quickfile = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = {
				enabled = true,
				left = { "mark", "sign" }, -- priority of signs on the left (high to low)
				right = { "fold", "git" }, -- priority of signs on the right (high to low)
				folds = {
				open = false,
				git_hl = false,
				},
				git = {
				patterns = { "GitSign", "MiniDiffSign" },
				},
				refresh = 50, -- refresh at most every 50ms
			},
			words = { enabled = true },
		},
	},
	{
		'niuiic/typst-preview.nvim',
		dependencies = { 'niuiic/core.nvim' },
		lazy = true,
		config = function()
			require'typst-preview'.setup{
				output_file = function()
					local core = require("core")
					return core.file.root_path() .. "/output.pdf"
				end,
				-- how to redirect output files
				redirect_output = function(original_file, output_file)
					vim.cmd(string.format("silent !ln -s %s %s", original_file, output_file))
				end,
				-- how to preview the pdf file
				preview = function(output_file)
					local core = require("core")
					core.job.spawn("xdg-open", {
						output_file,
						}, {}, function() end, function() end, function() end)
				end,
				-- whether to clean all pdf files on VimLeave
				clean_temp_pdf = true,
			}
		end,
	},
	{
		"olimorris/codecompanion.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		}
	},
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
	-- LSP
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{'j-hui/fidget.nvim', opts = {} },
			{ "folke/neodev.nvim", opts = {} },
		},
	},
	{
		-- Autocompletion
		'hrsh7th/nvim-cmp',
		dependencies = {
			-- Snippet Engine & its associated nvim-cmp source
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',

			-- Adds LSP completion capabilities
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',

			-- Adds a number of user-friendly snippets
			'rafamadriz/friendly-snippets',
		},
	},
})

require('lualine').setup {
	options = {
		theme = 'auto',
	},
}

require("neodev").setup()

vim.api.nvim_create_user_command("TypstPreview", function(_)
	require'typst-preview'.preview()
end, {})
