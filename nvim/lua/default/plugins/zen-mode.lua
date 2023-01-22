return {
  "folke/zen-mode.nvim",
  keys = {
    { '<C-w>Z', function() require("zen-mode").toggle() end },
  },
  config = function()
    require("zen-mode").setup()
  end
}
