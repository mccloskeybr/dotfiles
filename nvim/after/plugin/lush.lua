require('packer').use({
  'rktjmp/lush.nvim',
  requires = {
    '~/autumn-nvim'
  },
  config = function()
    vim.cmd('colorscheme autumn-nvim')
  end
})
