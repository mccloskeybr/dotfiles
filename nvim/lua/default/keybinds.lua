require('default.funcs.io')

vim.api.nvim_set_keymap('n', '<BS>', '<cmd>bn<CR>', {})
vim.api.nvim_set_keymap('n', 'q:', '<cmd>q<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '*', '\'vy<ESC>/<C-r>\'<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader><space>', '<cmd>noh<CR>', {})

vim.api.nvim_set_keymap('v', '<', '<gv', { silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { silent = true })

vim.api.nvim_set_keymap('v', '<C-c>', '<Plug>(operator-poweryank-osc52)', {})

vim.api.nvim_set_keymap('n', 'H', '<cmd>tabp<CR>', {})
vim.api.nvim_set_keymap('n', 'L', '<cmd>tabn<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>1', '1gt', {})
vim.api.nvim_set_keymap('n', '<Leader>2', '2gt', {})
vim.api.nvim_set_keymap('n', '<Leader>3', '3gt', {})
vim.api.nvim_set_keymap('n', '<Leader>4', '4gt', {})
vim.api.nvim_set_keymap('n', '<Leader>5', '5gt', {})
vim.api.nvim_set_keymap('n', '<Leader>6', '6gt', {})
vim.api.nvim_set_keymap('n', '<Leader>7', '7gt', {})
vim.api.nvim_set_keymap('n', '<Leader>8', '8gt', {})
vim.api.nvim_set_keymap('n', '<Leader>t', '<cmd>tabnew<CR>', {})

vim.api.nvim_set_keymap('n', '<Leader>v', '<cmd>vsplit<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>h', '<cmd>split<CR>', {})

do_if_exists(vim.fn.stdpath('config') .. '/lua/default/local-keybinds.lua')
