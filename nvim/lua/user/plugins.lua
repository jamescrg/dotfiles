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
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
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
    { import = 'user.plugins.floaterm' },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    { import = 'user.plugins.lspconfig' },
    { import = 'user.plugins.cmp' },
})
