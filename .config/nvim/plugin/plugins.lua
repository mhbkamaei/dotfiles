return require('packer').startup(function()

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'hrsh7th/cmp-nvim-lua'
    }
    use {
        'kevinhwang91/rnvimr'
    }
    use {
        'shaunsingh/nord.nvim'
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
end)
