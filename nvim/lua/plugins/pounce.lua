require('funcs.map_funcs')

require('packer').use({
  'rlane/pounce.nvim',
  config = function()
    nmap('<Leader>s', '<cmd>Pounce<CR>')
    vmap('<Leader>s', '<cmd>Pounce<CR>')
    nmap('<Leader>S', '<cmd>PounceRepeat<CR>')
  end
})
