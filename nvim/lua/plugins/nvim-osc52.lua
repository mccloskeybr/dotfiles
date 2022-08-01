require('funcs.map_funcs')

require('packer').use({
  'ojroques/nvim-osc52',
  config = function()
    nnoremap('<Leader>c', 'lua require("osc52").copy_operator, {expr = true}<CR>')
    vnoremap('<Leader>c', 'lua require("osc52").copy_visual<CR>')
  end
})
