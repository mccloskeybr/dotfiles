require('default.funcs.map_funcs')

return {
  {
    'mhinz/vim-signify',
    config = function()
      vim.g.signify_update_on_focusgained = 1
      nnoremap('<Leader>sd', '<cmd>SignifyDiff<CR>')
    end
  }
}
