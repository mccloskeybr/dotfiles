return {
  dir = '~/autumn-nvim.lua',
  dependencies = { 'rktjmp/lush.nvim' },
  lazy = false,
  -- load colorschemes first
  priority = 1000,
  config = function()
    vim.cmd('colorscheme autumn-nvim')
  end
}
