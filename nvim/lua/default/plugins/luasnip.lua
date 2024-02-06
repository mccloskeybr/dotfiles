return {
  'L3MON4D3/LuaSnip',
  dependencies = {
    'rafamadriz/friendly-snippets',
  },
  keys = {
    { '<C-Tab>', '<cmd>lua require("luasnip").jump(1)<CR>' },
    { '<C-S-Tab>', '<cmd>lua require("luasnip").jump(-1)<CR>' },
    { '<C-e>', '<cmd>lua require("luasnip").change_choice(1)<CR>' },
    { '<C-E>', '<cmd>lua require("luasnip").change_choice(-1)<CR>' },
  },
  config = function()
    require('luasnip.loaders.from_vscode').lazy_load()
  end
}
