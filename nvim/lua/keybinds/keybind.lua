vim.keymap.set(
    'n',
    '<Tab>',
    '<cmd>:tabNext<CR>',
    {desc = 'Next Tab'}
)
vim.keymap.set(
    'n',
    '<S-Tab>',
    '<cmd>:tabprevious<CR>',
    {
        desc = 'Previous Tab',
        noremap = true
    }
)
vim.keymap.set(
    'i',
    '<C-c>',
    '<Esc>',
    {
        desc = "Exit insert mode",
        noremap = true
    }
)
