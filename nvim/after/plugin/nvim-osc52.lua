require('default.funcs.map_funcs')

require('packer').use({
  'ojroques/nvim-osc52',
  config = function()
    nnoremap('<Leader>c', '<cmd>lua require("osc52").copy_operator, {expr = true}<CR>')
    vnoremap('<Leader>c', '<cmd>lua require("osc52").copy_visual<CR>')
  end
})
