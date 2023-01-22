return {
  'unblevable/quick-scope',
  dependencies = { dir = '~/autumn-nvim' },
  event = 'VeryLazy',
  init = function()
    vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
  end,
  config = function()
    local colors = require('autumn-nvim.colors').setup()
    vim.api.nvim_set_hl(0, 'QuickScopePrimary', { fg = colors.gold_crayola, underline = true })
    vim.api.nvim_set_hl(0, 'QuickScopeSecondary', { fg = colors.crimson, underline = true })
  end
}
