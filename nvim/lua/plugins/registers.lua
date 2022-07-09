require('packer').use({
  'tversteeg/registers.nvim',
  config = function()
    vim.cmd('hi RegistersWindow ctermbg=black')
    vim.g.registers_window_border = 'rounded'
    vim.g.registers_window_min_height = 15
    vim.g.registers_window_max_width = 100
  end
})
