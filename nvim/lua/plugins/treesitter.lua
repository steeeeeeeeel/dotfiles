return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
        sync_install = true,
        auto_install = true,
        ensure_installed = {
            "tsx",
            "toml",
            "html",
            "css",
            "yaml",
            "json",
            "lua",
            "javascript",
            "python"
        }
    }
}
