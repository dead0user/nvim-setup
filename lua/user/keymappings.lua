local map = vim.api.nvim_set_keymap
map('', '<Space>', ' ', {})
vim.g.mapleader = ' '

vim.keymap.set('', '<leader>f',':ToggleTerm size=40 direction=float<cr>', { desc = 'Float terminal'})
