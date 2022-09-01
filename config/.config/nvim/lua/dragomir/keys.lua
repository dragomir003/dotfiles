
local map = vim.api.nvim_set_keymap

local function map_leader(keys, command)
    local binding = string.format("<leader>%s", keys)
    map('n', binding, command, { noremap = true })
end

-- Window actions
map_leader('sv', ':vert split<CR>')
map_leader('sh', ':split<CR>')

map_leader('h', ':wincmd h<CR>')
map_leader('j', ':wincmd j<CR>')
map_leader('k', ':wincmd k<CR>')
map_leader('l', ':wincmd l<CR>')

-- Telescope

map_leader('tt', ':Telescope find_files<CR>')

-- Git signs

map_leader('gn', ':Gitsigns next_hunk<CR>')
map_leader('gp', ':Gitsigns prev_hunk<CR>')
map_leader('gs', ':Gitsigns stage_hunk<CR>')
map_leader('gr', ':Gitsigns reset_hunk<CR>')
map_leader('gu', ':Gitsigns undo_stage_hunk<CR>')
map_leader('gb', ':Gitsigns blame_line<CR>')

-- Neogit

map_leader('gg', ':Neogit kind=vsplit<CR>')
