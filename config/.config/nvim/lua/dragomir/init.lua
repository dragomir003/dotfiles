require("dragomir.opts")
require("dragomir.keys")
require("dragomir.vars")
require("dragomir.plug")

vim.cmd[[colorscheme dracula]]

require('lualine').setup {
    options = {
        theme = 'dracula-nvim'
    }
}
