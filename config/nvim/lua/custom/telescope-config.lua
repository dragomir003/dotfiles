
local telescope = require 'telescope'

telescope.setup{}

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>lg', ':Telescope live_grep<CR>')

vim.keymap.set('n', '<leader>gc', ':Telescope git_commits<CR>')
vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>')
vim.keymap.set('n', '<leader>gs', ':Telescope git_status<CR>')
