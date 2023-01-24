return {
  'mhinz/vim-signify',
  event = 'BufReadPre',
  keys = {
    { '<Leader>sd', '<cmd>SignifyDiff<CR>' }
  },
  init = function()
    vim.g.signify_update_on_focusgained = 1
  end
}
