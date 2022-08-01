require('funcs.map_funcs')

require('packer').use({
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons'
  },
  config = function()
    require('nvim-tree').setup({})

    nnoremap('<Leader>f', '<cmd>:NvimTreeFindFile<CR>')
  end
})