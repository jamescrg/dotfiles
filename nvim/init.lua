
-- Options
-- Keymaps
-- Plugins


-- Options ------------------------------------------------------------------

vim.opt.encoding = "UTF-8"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.termguicolors = true
vim.opt.spell = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = false
vim.opt.signcolumn = 'number'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.confirm = true
vim.opt.undofile = true
vim.opt.wildmode = 'longest:full,full'
vim.opt.completeopt = 'menuone,longest,preview'
vim.opt.mouse = 'a'
vim.opt.listchars = { tab = '▸ ', trail = '·' }
vim.opt.fillchars:append({ eob = ' ' })
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 1


-- Keymaps ------------------------------------------------------------------

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
vim.keymap.set('n', '<leader>p', 'obreakpoint()<Esc>')
-- command W :execute! ':silent w !sudo tee % > /dev/null' | :edit!')
vim.keymap.set('n', 'ev', ':e ~/.config/nvim/init.lua<cr>')
vim.keymap.set('n', 'ep', ':e ~/.config/nvim/lua/user/plugins<cr>')


-- Plugins ------------------------------------------------------------------

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'junegunn/seoul256.vim',
    "vim-airline/vim-airline",
    "vim-airline/vim-airline-themes",
    "tpope/vim-vinegar",
    "tpope/vim-commentary",
    "tpope/vim-eunuch",
    "tpope/vim-surround",
    "tpope/vim-repeat",
    "tpope/vim-sleuth",
    "farmergreg/vim-lastplace",
    "nelstrom/vim-visual-star-search",
    "pocco81/auto-save.nvim",
    "AndrewRadev/splitjoin.vim",
    "sickill/vim-pasta",
    "nvim-tree/nvim-web-devicons",
    "ryanoasis/vim-devicons",
    'junegunn/fzf',
    'junegunn/fzf.vim',
    'kalekundert/vim-coiled-snake',
    'mfussenegger/nvim-lint',
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    { import = 'user.plugins.floaterm' },
    { import = 'user.plugins.lspconfig' },
    { import = 'user.plugins.cmp' },
})


-- Colorscheme ------------------------------------------------------------------

vim.g.airline_theme = 'zenburn'
vim.g.seoul256_background = 254
vim.cmd('colorscheme seoul256-light')

require('lint').linters_by_ft = {
  markdown = {'vale'},
  python = {'flake8'},
  css = { 'stylelint' },
}

vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
