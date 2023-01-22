return {
  dir = '~/autumn-nvim.lua',
  dependencies = { 'rktjmp/lush.nvim' },
  lazy = false,
  config = function()
    vim.cmd('colorscheme autumn-nvim')
  end
}
