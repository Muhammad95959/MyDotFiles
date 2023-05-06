-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use "lukas-reineke/indent-blankline.nvim"
    use 'PotatoesMaster/i3-vim-syntax'
    use 'Shougo/deol.nvim'
    use 'ap/vim-css-color'
    use 'jamessan/vim-gnupg'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'terryma/vim-multiple-cursors'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'

    use 'gbprod/yanky.nvim'
    use 'gelguy/wilder.nvim'
    use 'itchyny/lightline.vim'
    use 'kevinhwang91/rnvimr'
    use 'lewis6991/impatient.nvim'
    use 'mbbill/undotree'
    use 'numToStr/Comment.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'windwp/nvim-autopairs'

    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-path'
    use 'tamago324/cmp-zsh'
    use 'uga-rosa/cmp-dictionary'

    use 'catppuccin/nvim'
    use 'folke/tokyonight.nvim'
    use 'julien/vim-colors-green'

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}

end)
