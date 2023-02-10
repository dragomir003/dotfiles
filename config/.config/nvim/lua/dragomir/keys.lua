
local map = vim.api.nvim_set_keymap

local function map_leader(keys, command)
    local binding = string.format("<leader>%s", keys)
    map('n', binding, command, { noremap = true })
end

-- Window actions
map_leader('sv', ':vert split<CR>')
map_leader('sh', ':split<CR>')

map_leader('wh', ':wincmd h<CR>')
map_leader('wj', ':wincmd j<CR>')
map_leader('wk', ':wincmd k<CR>')
map_leader('wl', ':wincmd l<CR>')

-- Telescope

map_leader('tt', ':Telescope find_files<CR>')
map_leader('tw', ':vsplit<CR>:wincmd l<CR>:Telescope find_files<CR>')

-- Git signs

map_leader('gn', ':Gitsigns next_hunk<CR>')
map_leader('gp', ':Gitsigns prev_hunk<CR>')
map_leader('gs', ':Gitsigns stage_hunk<CR>')
map_leader('gr', ':Gitsigns reset_hunk<CR>')
map_leader('gu', ':Gitsigns undo_stage_hunk<CR>')
map_leader('gb', ':Gitsigns blame_line<CR>')

-- Neogit

map_leader('gg', ':Neogit kind=vsplit<CR>')

-- Hop

map_leader('hs', ':HopChar1<CR>')
map_leader('hd', ':HopChar2<CR>')
map_leader('hl', ':HopLineStart<CR>')

-- Float term

map('n', '<leader>tf',
[[:lua require'floaterm'.open({ width=0.8, layout = 'center' })<CR>
]], {noremap = true })
