require('packer').use({
  'unblevable/quick-scope',
  config = function()
    vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}

    vim.cmd('hi QuickScopePrimary ctermfg=white cterm=underline')
    vim.cmd('hi QuickScopeSecondary ctermfg=yellow cterm=underline')
  end
})
