
-- Options
-- Keymaps
-- Plugins


-- Options ------------------------------------------------------------------

vim.opt.encoding = 'UTF-8'
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
vim.opt.foldlevel = 99
vim.opt.ttimeoutlen=50

-- Keymaps ------------------------------------------------------------------

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<leader><space>', ':nohlsearch<CR>')
vim.keymap.set('n', 'K', ':bd<cr>')
vim.keymap.set('n', '<C-d>', ':q<cr>')
vim.keymap.set('n', '<Tab>', '<C-w>w')
vim.keymap.set('n', '<leader>v', ':vsp<cr>')
vim.keymap.set('n', '*', '*N')
vim.keymap.set('n', '<leader>p', 'obreakpoint()<Esc>')
vim.keymap.set('n', 'ev', ':e $MYVIMRC<cr>')
vim.keymap.set('n', 'ep', ':e ~/.config/nvim/lua/user/plugins<cr>')
vim.keymap.set('n', 'eb', ':e ~/.bashrc<cr>')
vim.keymap.set('n', 'so', ':so<cr>')

-- fzf
vim.keymap.set('n', '<leader>f', ':Files<cr>')
vim.keymap.set('n', '<leader>b', ':Buffers<cr>')
vim.keymap.set('n', '<leader>r', ':Rg<cr>')

-- Plugins ------------------------------------------------------------------

require('user.lazy')
require('lazy').setup({
    {'junegunn/seoul256.vim',},
    {'sainnhe/everforest',},
    'vim-airline/vim-airline',
    'vim-airline/vim-airline-themes',
    'tpope/vim-vinegar',
    'tpope/vim-commentary',
    'tpope/vim-eunuch',
    'tpope/vim-surround',
    'tpope/vim-repeat',
    'tpope/vim-sleuth',
    'tpope/vim-fugitive',
    'farmergreg/vim-lastplace',
    'nelstrom/vim-visual-star-search',
    'pocco81/auto-save.nvim',
    'AndrewRadev/splitjoin.vim',
    'sickill/vim-pasta',
    'NMAC427/guess-indent.nvim',
    'nvim-tree/nvim-web-devicons',
    'ryanoasis/vim-devicons',
    'junegunn/fzf',
    'junegunn/fzf.vim',
    'kalekundert/vim-coiled-snake',
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    { "folke/neodev.nvim", opts = {} },
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    { import = 'user.plugins.nvim-autopairs' },
    { import = 'user.plugins.floaterm' },
    { import = 'user.plugins.lspconfig' },
    { import = 'user.plugins.cmp' },
},
{ 
  install = {
    colorscheme = {'seoul256-light'}
  }
})


-- Colorscheme ------------------------------------------------------------------

vim.g.seoul256_background = 254
vim.g.airline_theme = 'zenburn'
vim.cmd('colorscheme seoul256-light')

require("mason").setup()
require("mason-lspconfig").setup()
