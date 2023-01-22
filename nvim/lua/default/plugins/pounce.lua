require('default.funcs.map_funcs')

return {
  {
    'rlane/pounce.nvim',
    dependencies = { 'mccloskeybr/autumn-nvim' },
    config = function()
      local colors = require('autumn-nvim.colors').setup()
      vim.api.nvim_set_hl(0, 'PounceMatch', { bg = colors.gold_crayola.hex })
      vim.api.nvim_set_hl(0, 'PounceAccept', { bg = colors.mint.hex })
      vim.api.nvim_set_hl(0, 'PounceAcceptBest', { bg = colors.teal.hex })

      nmap('<Leader>s', '<cmd>Pounce<CR>')
      vmap('<Leader>s', '<cmd>Pounce<CR>')
      nmap('<Leader>S', '<cmd>PounceRepeat<CR>')
    end
  }
}
