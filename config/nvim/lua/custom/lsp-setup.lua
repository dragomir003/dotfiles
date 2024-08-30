require("mason").setup()
require("mason-lspconfig").setup()
local lspconfig = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require("mason-lspconfig").setup_handlers {
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function (server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup {}
	end,
}

lspconfig.lua_ls.setup({
	single_file_support = true,
	flags = {
		debounce_text_changes = 150,
	},
})

lspconfig.clangd.setup({
	single_file_support = true,
	flags = {
		debounce_text_changes = 150,
	},
})

lspconfig.pyright.setup({
	single_file_support = true,
	flags = {
		debounce_text_changes = 150,
	},
})

require'lspconfig'.typst_lsp.setup{
	filetypes = { "typst" },
	settings = {
		exportPdf = "onSave", -- Choose onType, onSave or never.
        -- serverPath = "" -- Normally, there is no need to uncomment it.
	}
}

lspconfig.rust_analyzer.setup {
  settings = {
    ['rust-analyzer'] = {},
  },
}

lspconfig.hls.setup{
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
}

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Displays hover information about the symbol under the cursor
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')

    -- Jump to the definition
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

    -- Jump to declaration
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

    -- Lists all the references 
    bufmap('n', '<leader>lr', require('telescope.builtin').lsp_references)

    -- Renames all references to the symbol under the cursor
    bufmap('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<cr>')

    -- Selects a code action available at the current cursor position
    bufmap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>')

    -- Show diagnostics in a floating window
    bufmap('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<cr>')

    -- Move to the previous diagnostic
    bufmap('n', '<leader>pd', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

    -- Move to the next diagnostic
    bufmap('n', '<leader>nd', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  end
})

require('neodev').setup{}
