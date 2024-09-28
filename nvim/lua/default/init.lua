vim.g.profile = 'HOME'

vim.g.os = 'LINUX'
if vim.loop.os_uname().sysname == 'Windows_NT' then
  vim.g.os = 'WINDOWS'
end

require('default.funcs.io')

require('default.settings')
require('default.keybinds')
require('default.lazy-nvim')
