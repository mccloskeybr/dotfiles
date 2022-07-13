require('funcs.map_funcs')

require('packer').use({
  'L3MON4D3/LuaSnip',
  requires = {
    'rafamadriz/friendly-snippets',
  },
  config = function()
    require('luasnip.loaders.from_vscode').lazy_load()

    inoremap_silent('<Tab>', '<cmd>lua require(\'luasnip\').jump(1)<CR>')
    inoremap_silent('<S-Tab>', '<cmd>lua require(\'luasnip\').jump(-1)<CR>')

    inoremap_silent('<C-e>', '<cmd>lua require(\'luasnip\').change_choice(1)<CR>')
    inoremap_silent('<C-E>', '<cmd>lua require(\'luasnip\').change_choice(-1)<CR>')
  end
})
