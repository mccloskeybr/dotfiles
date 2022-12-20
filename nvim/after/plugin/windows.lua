require('funcs.map_funcs')

require('packer').use({
  'anuvyklack/windows.nvim',
  requires = {
    'anuvyklack/middleclass',
    'anuvyklack/animation.nvim',
  },
  config = function()
    vim.o.winwidth = 10
    vim.o.winminwidth = 10
    vim.o.equalalways = false
    require('windows').setup()

    nnoremap('<C-w>z', '<cmd>WindowsMaximize<CR>')
  end
})
