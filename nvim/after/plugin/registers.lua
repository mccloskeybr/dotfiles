require('packer').use({
  'tversteeg/registers.nvim',
  config = function()
    require('registers').setup({
      window = {
        border = "rounded",
        min_heigh = 15,
        max_width = 100,
      },
    })
    vim.cmd('hi RegistersWindow ctermbg=black')
  end
})
