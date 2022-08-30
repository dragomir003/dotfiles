local map = vim.api.nvim_set_keymap
local aucmd = vim.api.nvim_create_autocmd

local grp = vim.api.nvim_create_augroup("dragomir-wiki", { clear = true })

aucmd("BufEnter", {
    group = grp,
    pattern = "*.wiki",
    callback = function()
        local date = os.date("%Y-%m-%d %H:%M:%S")
        map('n', '<leader>wp',
            string.format(
            ":w<CR>:!cd ~/vimwiki/ && git add -A && git commit -m '%s'<CR><CR>", 
            date),
            { noremap = true })
    end
})

aucmd("BufLeave", {
    group = grp,
    pattern = "*.wiki",
    callback = function()
        map('n', '<leader>wp', '', { noremap = true })
    end
})
