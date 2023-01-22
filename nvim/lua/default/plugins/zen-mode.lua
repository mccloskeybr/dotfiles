require('default.funcs.map_funcs')

return {
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup()
      nnoremap('<C-w>Z', '<cmd>lua require("zen-mode").toggle()<CR>')
    end
  }
}
