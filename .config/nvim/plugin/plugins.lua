return require('packer').startup(function()
    
    -- Packer can manage itself
    use {
        'wbthomason/packer.nvim'
    }
    
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
        
    use {
        'neovim/nvim-lspconfig'
    }
    use {
        'hrsh7th/nvim-cmp'
    }
    use {
        'hrsh7th/cmp-nvim-lsp'
    }
    use {
        'windwp/nvim-autopsirs'
    }
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
    use {
        'norcalli/nvim-colorizer.lua'
    }

end)
