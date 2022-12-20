require('funcs.map_funcs')

require('packer').use({
  'karb94/neoscroll.nvim',
  config = function()
    require('neoscroll').setup()
  end
})
