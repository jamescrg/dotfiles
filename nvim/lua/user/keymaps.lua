
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<leader><space>', ':nohlsearch<CR>')
vim.keymap.set('n', 'K', ':bd<cr>')
vim.keymap.set('n', '<C-d>', ':q<cr>')
vim.keymap.set('n', '<Tab>', '<C-w>w')
vim.keymap.set('n', '<leader>v', ':vsp<cr>')
vim.keymap.set('n', '<leader>f', ':GFiles<cr>')
vim.keymap.set('n', '<leader>b', ':Buffers<cr>')
vim.keymap.set('n', '<nowait><leader>b', ':Buffers<cr>')
vim.keymap.set('n', '*', '*N')
vim.keymap.set('n', '<C-f>', ':vimgrep \'\' **/*<left><left><left><left><left><left>')
vim.keymap.set('n', '<leader>c', ':copen 10<cr>')
vim.keymap.set('n', '<C-h>', ':%s//gc<left><left><left>')
vim.keymap.set('n', '<leader>p', 'obreakpoint()<Esc>')
-- command W :execute! ':silent w !sudo tee % > /dev/null' | :edit!')
vim.keymap.set('n', 'ev', ':edit ~/.config/nvim/init.lua<cr>')
vim.keymap.set('n', 'ep', ':edit ~/.config/nvim/lua/user/plugins.lua<cr>')
