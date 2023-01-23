return {
  'rlane/pounce.nvim',
  event = 'VeryLazy',
  keys = {
    { '<Leader>s', '<cmd>Pounce<CR>', mode = {'n', 'v'} },
    { '<Leader>S', '<cmd>PounceRepeat<CR>' },
  },
}
