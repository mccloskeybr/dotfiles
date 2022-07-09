require('funcs.map_funcs')

require('packer').use({
  'mhinz/vim-signify',
  config = function()
    -- gutter colors
    vim.cmd('hi SignifySignAdd ctermbg=black ctermfg=119')
    vim.cmd('hi SignifySignChange ctermbg=black ctermfg=227')
    vim.cmd('hi SignifySignDelete ctermbg=black ctermfg=167')

    -- signify diff colors
    vim.cmd('hi SignifyLineAdd ctermbg=black ctermfg=119')
    vim.cmd('hi SignifyLineChange ctermbg=black ctermfg=227')
    vim.cmd('hi SignifyLineDelete ctermbg=black ctermfg=167')

    vim.g.signify_update_on_focusgained = 1

    nnoremap('<Leader>sd', '<cmd>SignifyDiff<CR>')
  end
})
