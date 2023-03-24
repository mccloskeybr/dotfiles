return {
  'axieax/typo.nvim',
  config = function()
    require('typo').setup({
      ignored_suggestions = { "*.orig" },
    })
  end
}
