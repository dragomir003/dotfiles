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

require("neodev").setup({})

vim.api.nvim_create_user_command("TypstPreview", function(_)
	require'typst-preview'.preview()
end, {})
