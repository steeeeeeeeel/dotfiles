require("config.options")
require("config.keymaps")
require("config.lazy")
require("lazy").setup("plugins")
-- Treesitter
vim.treesitter.language.register('html', {'handlebars'})
require("config.colour")
require("config.lsp")
