return require('packer').startup(function()
    -- [[ Plugins Go Here ]]
    use('Mofiqul/dracula.nvim')
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons',
        opt = true}
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-treesitter/nvim-treesitter'},
            {
                'kyazdani42/nvim-web-devicons',
                opt = true
            }
        }
    }
end)
