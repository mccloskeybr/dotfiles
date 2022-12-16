require('funcs.map_funcs')

require('packer').use({
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup()
    nnoremap('<C-w>Z', '<cmd>lua require("zen-mode").toggle()<CR>')
  end
})
