local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = { }
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "rose-pine/neovim", name = "rose-pine" },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    "theprimeagen/harpoon",
    "mbbill/undotree",
    "supermaven-inc/supermaven-nvim",
    "tpope/vim-commentary",
    "sheerun/vim-polyglot",
    "vimwiki/vimwiki",
    "mattn/emmet-vim",
    "tpope/vim-surround",
})
