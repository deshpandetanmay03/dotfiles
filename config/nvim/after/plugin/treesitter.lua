require'nvim-treesitter.configs'.setup {
    indent = {
        enable = true,
    },

    ensure_installed = {},
    sync_install = false,
    auto_install = true,
    ignore_install = {},

    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
}
