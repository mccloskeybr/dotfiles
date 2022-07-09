require('funcs.map_funcs')

require('packer').use({
  'rlane/pounce.nvim',
  config = function()
    nmap('s', '<cmd>Pounce<CR>')
    vmap('s', '<cmd>Pounce<CR>')
    nmap('S', '<cmd>PounceRepeat<CR>')
  end
})
