require('default.funcs.map_funcs')

require('packer').use({
  'rlane/pounce.nvim',
  config = function()
    vim.api.nvim_set_hl(0, 'PounceMatch', { link = 'Search' })
    vim.api.nvim_set_hl(0, 'PounceAccept', { bg = '#648767' })
    vim.api.nvim_set_hl(0, 'PounceAcceptBest', { bg = '#598291' })

    nmap('<Leader>s', '<cmd>Pounce<CR>')
    vmap('<Leader>s', '<cmd>Pounce<CR>')
    nmap('<Leader>S', '<cmd>PounceRepeat<CR>')
  end
})
