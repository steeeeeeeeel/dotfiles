return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  ensure_installed = {
      "tsx",
      "toml",
      "html",
      "css",
      "yaml",
      "json",
      "lua",
      "javascript"
  }
}
