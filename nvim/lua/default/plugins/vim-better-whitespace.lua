return {
  'ntpeters/vim-better-whitespace',
  event = 'VeryLazy',
  config = function()
    vim.g.better_whitespace_enabled = 1
    vim.g.strip_whitespace_on_save = 1
    vim.g.better_whitespace_filetypes_blacklist = { 'dashboard' }
  end
}
