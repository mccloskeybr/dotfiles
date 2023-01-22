return {
  'rlane/pounce.nvim',
  dependencies = { 'mccloskeybr/autumn-nvim' },
  event = 'VeryLazy',
  keys = {
    { '<Leader>s', '<cmd>Pounce<CR>', mode = {'n', 'v'} },
    { '<Leader>S', '<cmd>PounceRepeat<CR>' },
  },
  config = function()
    local colors = require('autumn-nvim.colors').setup()
    vim.api.nvim_set_hl(0, 'PounceMatch', { bg = colors.gold_crayola })
    vim.api.nvim_set_hl(0, 'PounceAccept', { bg = colors.mint })
    vim.api.nvim_set_hl(0, 'PounceAcceptBest', { bg = colors.teal })
  end
}
