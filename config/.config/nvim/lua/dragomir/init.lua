require("dragomir.opts")
require("dragomir.keys")
require("dragomir.vars")
require("dragomir.plug")
require("dragomir.autocommands")

vim.cmd[[colorscheme dracula]]

require('lualine').setup {
    options = {
        theme = 'dracula-nvim'
    }
}

require('gitsigns').setup()

vim.api.nvim_exec(
[[

set guifont=Fira\ Code:h10

if exists("g:neovide")
    let g:neovide_refresh_rate=60
    let g:neovide_refresh_rate_idle=5
    let g:neovide_transparency=0.95
    let g:neovide_fullscreen=v:true
    let g:neovide_cursor_vfx_mode = "torpedo"
endif

]],
false)
