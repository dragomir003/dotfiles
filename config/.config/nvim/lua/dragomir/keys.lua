
local map = vim.api.nvim_set_keymap

-- Window actions
map('n', '<leader>sv', ':vert split\n', { noremap = true })
map('n', '<leader>sh', ':split\n', { noremap = true })

map('n', '<leader>h', ':wincmd h\n', { noremap = true })
map('n', '<leader>j', ':wincmd j\n', { noremap = true })
map('n', '<leader>k', ':wincmd k\n', { noremap = true })
map('n', '<leader>l', ':wincmd l\n', { noremap = true })

-- Telescope
map('n', '<leader>tf', ':Telescope find_files\n', { noremap = true })
