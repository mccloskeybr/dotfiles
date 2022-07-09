require('packer')
require('funcs.map_funcs')

require('packer').use({
  'neovim/nvim-lspconfig',
  config = function()
    nnoremap('<Leader>df', 'lua vim.diagnostic.open_float()')
    nnoremap('<Leader>dN', 'lua vim.diagnostic.goto_prev()')
    nnoremap('<Leader>dn', 'lua vim.diagnostic.goto_next()')
    nnoremap('<Leader>lc', '<cmd>lua vim.lsp.buf.code_action()<CR>')
    nnoremap('<C-k>', '<cmd>lua vim.lsp.buf.hover()<CR>')
  end
})

