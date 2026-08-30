-- Bind leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Local functions
local function fastFix()
    vim.lsp.buf.code_action({
        filter = function (a) return a.isPreferred end,
        apply = true
    })
end

-- Maps
vim.keymap.set('n', '<leader>w', ':write<CR>',
{
    desc = 'Write current file'
})
vim.keymap.set('n', '<leader>q', ':quit<CR>',
{
    desc = 'Quit'
})
vim.keymap.set('n', '<Tab>', '<cmd>:tabnext<CR>',
{
    desc = 'Next Tab'
})
vim.keymap.set('n', '<S-Tab>', '<cmd>:tabprevious<CR>',
{
    desc = 'Previous Tab',
})
vim.keymap.set('i','<C-c>','<Esc>',
{
    desc = 'Exit insert mode',
    noremap = true
})
vim.keymap.set('n', '<CR>', '<cmd>:let @/ = ""<CR>',
{
    desc = 'Clear search highlighting when return input in normal mode',
    noremap = true
})
vim.keymap.set('n', '<leader>i', function( )vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end,
{
    desc = 'Toggle inlay hints',
    noremap = true
})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename,
{
    desc = "Rename lsp buffer"
})
vim.keymap.set('n', '<leader>ff', fastFix,
{
    desc = 'Apply suggested quickfix'
})
