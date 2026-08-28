vim.opt.clipboard = 'unnamedplus'

-- Interface
vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.cursorline = true

-- List
vim.opt.list = true
vim.opt.listchars = { multispace = '·' }

--  Tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Errors
vim.diagnostic.enable = true
vim.diagnostic.config({
    virtual_text = {
        spacing = 2,
    },
    signs = true,
    update_in_insert = false,
    float = true,
    underline = false,
})

-- Spellcheck
vim.opt.spell = true
vim.opt.spelllang = 'en_au'

-- Wildmode
vim.opt.wildmenu = true
vim.o.wildmode = 'longest,list:full'
