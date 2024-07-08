local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
require("lazy").setup({
        "folke/which-key.nvim",
        { "folke/neoconf.nvim", cmd = "Neoconf" },
        "folke/neodev.nvim",
        {
            'nvim-telescope/telescope.nvim', tag = '0.1.6',
            dependencies = { 'nvim-lua/plenary.nvim' }
        },
        { "rose-pine/neovim", name = "rose-pine" },
        {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
        "theprimeagen/harpoon",
        "mbbill/undotree",
        {
            "supermaven-inc/supermaven-nvim",
            config = function()
                require("supermaven-nvim").setup({})
            end,
        },
        -- "yggdroot/indentLine",
        "tpope/vim-commentary",
        "sheerun/vim-polyglot",
        "vimwiki/vimwiki",
        "mattn/emmet-vim",
        "tpope/vim-surround",
        -- "norcalli/nvim-colorizer.lua",
        -- "neovim/nvim-lspconfig",
        -- "williamboman/mason.nvim",
        -- "williamboman/mason-lspconfig.nvim",
        -- "hrsh7th/nvim-cmp",
        -- "hrsh7th/cmp-nvim-lsp",
        -- "hrsh7th/cmp-buffer",
        -- "hrsh7th/cmp-path",
        -- "saadparwaiz1/cmp_luasnip",
        -- "L3MON4D3/LuaSnip",
        -- "rafamadriz/friendly-snippets",
        -- {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    })
