require('default.funcs.io')

vim.api.nvim_set_keymap('v', '*', '\'vy<ESC>/<C-r>\'<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader><space>', '<cmd>noh<CR>', { noremap = true })

vim.api.nvim_set_keymap('v', '<', '<gv', { silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { silent = true })

vim.api.nvim_set_keymap('v', '<C-c>', '<Plug>(operator-poweryank-osc52)', {})

vim.api.nvim_set_keymap('n', 'H', '<cmd>tabp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'L', '<cmd>tabn<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>1', '1gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>2', '2gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>3', '3gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>4', '4gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>5', '5gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>6', '6gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>7', '7gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>8', '8gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>t', '<cmd>tabnew<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<Leader>v', '<cmd>vsplit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>h', '<cmd>split<CR>', { noremap = true })

do_if_exists(vim.fn.stdpath('config') .. '/lua/default/local-keybinds.lua')
