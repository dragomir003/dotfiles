
local map = vim.api.nvim_set_keymap

local function map_leader(keys, command)
    local binding = string.format("<leader>%s", keys)
    map('n', binding, command, { noremap = true })
end

-- Window actions
map_leader('sv', ':vert split<CR>')
map_leader('sh', ':split<CR>')

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

-- FTerm

map_leader('ft', ':lua require("FTerm").toggle()<CR>')
map_leader('fr', ':lua require("FTerm").run(vim.fn.input("Command: ", "", "command"))<CR>')
