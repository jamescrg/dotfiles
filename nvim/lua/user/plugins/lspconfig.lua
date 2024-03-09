
return { 
  'neovim/nvim-lspconfig',
  config = function()

    -- Lanuch langauge servers
    require'lspconfig'.pyright.setup{}
    require'lspconfig'.cssls.setup{}
    require'lspconfig'.html.setup{}

    -- Keymaps
    -- See `:help vim.diagnostic.*` for documentation on any 
    -- of the below functions
    vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

    -- Diagnostic configuration
    vim.diagnostic.config({
      virtual_text = false,
      float = {
        source = true,
      }
    })
  end
}
