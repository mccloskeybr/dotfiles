require('default.funcs.io')

vim.api.nvim_set_keymap('n', 'q:', '<cmd>q<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '*', '\'vy<ESC>/<C-r>\'<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader><space>', '<cmd>noh<CR>', {})

vim.api.nvim_set_keymap('v', '<', '<gv', { silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { silent = true })

vim.api.nvim_set_keymap('v', '<C-c>', '<Plug>(operator-poweryank-osc52)', {})

vim.api.nvim_set_keymap('n', '<Leader>v', '<cmd>vsplit<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>h', '<cmd>split<CR>', {})

do_if_exists(vim.fn.stdpath('config') .. '/lua/default/local-keybinds.lua')
