-- bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:append(lazypath)

require('lazy').setup({
  {
    import = 'default.plugins',
    install = { colorscheme = { 'autumn-nvim' } },
    dev = { path = '~' },
  }
})
