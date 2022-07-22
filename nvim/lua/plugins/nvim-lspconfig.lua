require('packer')
require('funcs.map_funcs')

require('packer').use({
  'neovim/nvim-lspconfig',
  config = function()
    nnoremap('<Leader>df', '<cmd>lua vim.diagnostic.open_float()<CR>')
    nnoremap('<Leader>dN', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
    nnoremap('<Leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
    nnoremap('<Leader>lc', '<cmd>lua vim.lsp.buf.code_action()<CR>')
    nnoremap('<C-k>', '<cmd>lua vim.lsp.buf.hover()<CR>')
  end
})

