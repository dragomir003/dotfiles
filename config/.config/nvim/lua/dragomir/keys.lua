
local map = vim.api.nvim_set_keymap

local function map_leader(keys, command, mode)
    local binding = string.format("<leader>%s", keys)
    map(mode, binding, command, { noremap = true })
end

-- Window actions
map_leader('sv', ':vert split<CR>', 'n')
map_leader('sh', ':split<CR>', 'n')

-- Telescope

map_leader('tt', ':Telescope find_files<CR>', 'n')
map_leader('tw', ':vsplit<CR>:wincmd l<CR>:Telescope find_files<CR>', 'n')

-- Git signs

map_leader('gn', ':Gitsigns next_hunk<CR>', 'n')
map_leader('gp', ':Gitsigns prev_hunk<CR>', 'n')
map_leader('gs', ':Gitsigns stage_hunk<CR>', 'n')
map_leader('gr', ':Gitsigns reset_hunk<CR>', 'n')
map_leader('gu', ':Gitsigns undo_stage_hunk<CR>', 'n')
map_leader('gb', ':Gitsigns blame_line<CR>', 'n')

-- Neogit

map_leader('gg', ':Neogit kind=vsplit<CR>', 'n')

-- Hop

map_leader('hs', ':HopChar1<CR>', 'n')
map_leader('hd', ':HopChar2<CR>', 'n')
map_leader('hl', ':HopLineStart<CR>', 'n')

-- FTerm

map_leader('ft', ':lua require("FTerm").toggle()<CR>', 'n')
map_leader('fr', ':lua require("FTerm").run(vim.fn.input("Command: ", "", "command"))<CR>', 'n')

-- True Zen

map_leader("zn", ":TZNarrow<CR>", 'n')
map_leader("zn", ":'<,'>TZNarrow<CR>", "v")
map_leader("zf", ":TZFocus<CR>", 'n')
map_leader("zm", ":TZMinimalist<CR>", 'n')
map_leader("za", ":TZAtaraxis<CR>", 'n')
