return {
  'roobert/action-hints.nvim',
  dependencies = { dir = '~/autumn-nvim' },
  event = 'BufEnter',
  config = function()
    local colors = require('autumn-nvim.colors').setup()
    require('action-hints').setup({
      template = {
        definition = { text = ' d', color = colors.olive },
        references = { text = ' r%s', color = colors.olive },
      },
      use_virtual_text = true,
    })
  end
}
