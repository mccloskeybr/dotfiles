require('packer').use({
  'L3MON4D3/LuaSnip',
  requires = {
    'rafamadriz/friendly-snippets',
    os.getenv('HOME') .. '/luasnip-google.nvim',
  },
  config = function()
    require('luasnip.loaders.from_vscode').lazy_load()
    require('luasnip-google').load_snippets()
  end
})
