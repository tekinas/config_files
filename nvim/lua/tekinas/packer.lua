vim.cmd.packadd('packer.nvim')
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'Mofiqul/dracula.nvim'
    use 'doums/darcula'
    use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
    use 'tanvirtin/monokai.nvim'
    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    use 'tpope/vim-fugitive'
    use 'preservim/nerdtree'
    use 'ibhagwan/fzf-lua'
    use 'nvim-tree/nvim-web-devicons'
    use 'mbbill/undotree'
    use 'psliwka/vim-smoothie'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },                  -- Required
            { 'hrsh7th/cmp-nvim-lsp' },              -- Required
            { 'hrsh7th/cmp-buffer' },                -- Optional
            { 'hrsh7th/cmp-path' },                  -- Optional
            { 'saadparwaiz1/cmp_luasnip' },          -- Optional
            { 'hrsh7th/cmp-nvim-lua' },              -- Optional
            -- Snippets
            { 'L3MON4D3/LuaSnip' },                  -- Required
            { 'rafamadriz/friendly-snippets' },      -- Optional
        }
    }
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {}
        end
    }
end)
