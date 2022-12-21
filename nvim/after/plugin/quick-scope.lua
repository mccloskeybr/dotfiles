require('packer').use({
  'unblevable/quick-scope',
  config = function()
    vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}

    vim.api.nvim_set_hl(0, 'QuickScopePrimary', { fg = '#EEC686', underline = true })
    vim.api.nvim_set_hl(0, 'QuickScopeSecondary', { fg = '#D92638', underline = true })
  end
})
