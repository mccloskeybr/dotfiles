require('funcs.helpers')

require('packer').use({
  'szw/vim-maximizer',
  config = function()
    vim.g.maximizer_set_default_mapping = 0
    nnoremap('<Leader>z', '<cmd>MaximizerToggle<CR>')
  end
})
