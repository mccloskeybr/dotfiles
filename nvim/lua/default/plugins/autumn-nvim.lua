return {
  dir = '~/autumn-nvim',
  dev = true,
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd('colorscheme autumn-nvim')
  end
}
