
local map = vim.api.nvim_set_keymap

-- Window actions
map('n', '<leader>sv', ':vert split\n', { noremap = true })
map('n', '<leader>sh', ':split\n', { noremap = true })

map('n', '<leader>h', ':wincmd h\n', { noremap = true })
map('n', '<leader>j', ':wincmd j\n', { noremap = true })
map('n', '<leader>k', ':wincmd k\n', { noremap = true })
map('n', '<leader>l', ':wincmd l\n', { noremap = true })

-- Telescope

map('n', '<leader>tt', ':Telescope find_files\n', { noremap = true })

-- Git signs

map('n', '<leader>gn', ':Gitsigns next_hunk<CR>', { noremap = true })
map('n', '<leader>gp', ':Gitsigns prev_hunk<CR>', { noremap = true })
map('n', '<leader>gs', ':Gitsigns stage_hunk<CR>', { noremap = true })
map('n', '<leader>gr', ':Gitsigns reset_hunk<CR>', { noremap = true })
map('n', '<leader>gu', ':Gitsigns undo_stage_hunk<CR>', { noremap = true })
map('n', '<leader>gb', ':Gitsigns blame_line<CR>', { noremap = true })

-- Neogit

map('n', '<leader>gg', ':Neogit kind=vsplit', { noremap = true })
