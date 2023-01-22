return {
  'mhinz/vim-signify',
  keys = {
    { '<Leader>sd', '<cmd>SignifyDiff<CR>' }
  },
  config = function()
    vim.g.signify_update_on_focusgained = 1
  end
}
