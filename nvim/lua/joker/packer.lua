-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                          , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- use("theprimeagen/harpoon")
    use { "mbbill/undotree" }

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

    -- lsp-server-installer
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }

    -- Adds Icons to Plugins (e.g. in the status/tabline)
    use { "ryanoasis/vim-devicons" }

    -- An easy way for commenting out lines
    use { 'preservim/nerdcommenter' }

    -- tmux integration for vim
    -- use { 'benmills/vimux' }

    -- Themes
    -- use { 'gruvbox-community/gruvbox' }
    -- use {
        --'rose-pine/neovim',
        --as = 'rose-pine',
        --config = function()
            --vim.cmd('colorscheme rose-pine')
        --end
    -- }
    use { 'EdenEast/nightfox.nvim' }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Image Viewer as ASCII Art for Neovim, written in Lua 
    use {
        'samodostal/image.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
    }

    -- A File Explorer For Neovim Written In Lua
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      }
    }
    -- Icons for 'nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

end)
