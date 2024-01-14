vim.g.mapleader = " "

vim.keymap.set({'n', 'x'}, "<leader>y", "+y")
vim.keymap.set({'n', 'x'}, "<leader>p", "+p")
vim.keymap.set({'n', 'x'}, "<leader>Y", "+Y")
vim.keymap.set({'n', 'x'}, "<leader>P", "+P")

vim.keymap.set({'n', 'x'}, 'x', '"_x') -- 'x' does no longer copy to clipboard
vim.keymap.set({'n', 'x'}, 'X', '"_X') -- 'X' does no longer copy to clipboard

vim.keymap.set({'n', 'x'}, "<leader>e", ":Lexplore<CR>")

vim.keymap.set('n', "<C-d>", "<C-d>zz")
vim.keymap.set('n', "<C-d>", "<C-d>zz")

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
