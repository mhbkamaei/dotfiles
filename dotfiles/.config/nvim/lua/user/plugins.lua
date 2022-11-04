return require('packer').startup(function()
    -- Packer can manage itself
    use {
        'wbthomason/packer.nvim'
    }
    use {
        'onsails/lspkind.nvim'
    }
    use {
        'williamboman/nvim-lsp-installer'
    }
    use {
        'neovim/nvim-lspconfig'
    }
    use {
        'hrsh7th/cmp-nvim-lsp'
    }
    use {
        'hrsh7th/cmp-buffer'
    }
    use {
        'hrsh7th/cmp-path'
    }
    use {
        'hrsh7th/cmp-cmdline'
    }
    use {
        'hrsh7th/nvim-cmp'
    }
    use {
        'hrsh7th/cmp-nvim-lua'
    }
    -- use {
    --     'hrsh7th/cmp-vsnip'
    -- }
    use {
        'L3MON4D3/LuaSnip'
    }
    use {
        'saadparwaiz1/cmp_luasnip'
    }
    use {
        'windwp/nvim-autopairs'
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'kevinhwang91/rnvimr'
    }
    use {
        'ellisonleao/gruvbox.nvim'
    }
    use {
        'norcalli/nvim-colorizer.lua'
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'numToStr/Comment.nvim'
    }
    use {
        'numToStr/FTerm.nvim'
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
end)
