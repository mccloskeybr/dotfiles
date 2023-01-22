return {
  {
    'unblevable/quick-scope',
    dependencies = { dir = '~/autumn-nvim' },
    lazy = false,
    init = function()
      vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
    end,
    config = function()
      local colors = require('autumn-nvim.colors').setup()
      vim.api.nvim_set_hl(0, 'QuickScopePrimary', { fg = colors.gold_crayola.hex, underline = true })
      vim.api.nvim_set_hl(0, 'QuickScopeSecondary', { fg = colors.crimson.hex, underline = true })
    end
  }
}