require('packer').use({
  'unblevable/quick-scope',
  requires = { 'mccloskeybr/autumn-nvim' },
  config = function()
    vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}

    local colors = require('autumn-nvim.colors').setup()
    vim.api.nvim_set_hl(0, 'QuickScopePrimary', { fg = colors.gold_crayola.hex, underline = true })
    vim.api.nvim_set_hl(0, 'QuickScopeSecondary', { fg = colors.crimson.hex, underline = true })
  end
})
