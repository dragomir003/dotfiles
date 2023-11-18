require"lazy".setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	{ "nvim-treesitter/nvim-treesitter", lazy = false },
	"lewis6991/gitsigns.nvim",
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep",
			"nvim-telescope/telescope-fzf-native.nvim",
			"sharkdp/fd",
		},
    },
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
		-- add any options here
		},
		dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
		}
	},
	{
	  'stevearc/dressing.nvim',
	  opts = {},
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		lazy = false,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
	},

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

require('ibl').setup{}

require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})
