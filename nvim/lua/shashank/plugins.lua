local plugins = {
    ---------------------------------------------------------------
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    ---------------------------------------------------------------
    "folke/neodev.nvim",
    ---------------------------------------------------------------
    --commenting
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup {}
        end
    },
    ---------------------------------------------------------------
    --lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("lualine").setup {
                icons_enabled = true,
                theme = 'wal'
            }
        end
    },
    ---------------------------------------------------------------
    --icons
    { 'nvim-tree/nvim-web-devicons' },
    ---------------------------------------------------------------
    --treeshitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    ---------------------------------------------------------------
    --telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    ---------------------------------------------------------------
    --surround
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
            })
        end
    },
    ---------------------------------------------------------------
    --tree
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons',},
    },
    ---------------------------------------------------------------
    --autopairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    ---------------------------------------------------------------
    --colorscheme
    -- { "EdenEast/nightfox.nvim" },
    {"dylanaraps/wal.vim"},
    --codeium
    "Exafunction/codeium.vim",
    ---------------------------------------------------------------
    --nvim-treesitter-playground
    "nvim-treesitter/playground",
    ---------------------------------------------------------------
    --undo tree
    "mbbill/undotree",
    ---------------------------------------------------------------
    --for git
    "tpope/vim-fugitive",
    ---------------------------------------------------------------
    --for i dont know why
    "nvim-tree/nvim-web-devicons",
    ---------------------------------------------------------------
    --for lsp keymaps and stuff
    "neovim/nvim-lspconfig",
    ---------------------------------------------------------------
    --for downloading language servers
    "williamboman/mason.nvim",
    ---------------------------------------------------------------
    --for mason-lspconfig i dont know why
    "williamboman/mason-lspconfig.nvim",
    ---------------------------------------------------------------
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    ---------------------------------------------------------------
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            'hrsh7th/cmp-nvim-lsp'
        }
    },
    ---------------------------------------------------------------
    { "vimwiki/vimwiki" },
    ---------------------------------------------------------------
}




local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup(plugins)
