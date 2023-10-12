vim.g.mapleader = ' '

-- Normal mode mappings
vim.api.nvim_set_keymap('n', '<C-_>', ':split<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-i>', ':vert split<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', 'œ', 'o<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', 'Œ', 'O<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-Up>', ':m-2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-Down>', ':m+1<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>y', '%y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><leader>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':qa<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':tabn<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>T', ':tabp<CR>', { noremap = true })

-- Mapping for reflowing lines
vim.api.nvim_set_keymap('n', 'Q', 'gqq', { noremap = true })
vim.api.nvim_set_keymap('x', 'Q', 'gqq', { noremap = true })
