return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
            disable = {}
        },
        indent = {
            enable = true,
            disable = {}
        },
        ensure_installed = {
            "tsx",
            "yaml",
            "html",
            "css",
            "lua",
            "json",
        },
        autotag = {
            enable = true
        }
    }
}
