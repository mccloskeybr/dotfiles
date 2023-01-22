return {
  'lukas-reineke/indent-blankline.nvim',
  event = 'VeryLazy',
  opts = {
    show_current_context = true,
    char_space_blankline = ' ',
    char_highlight_list = {
      'LineNr',
    },
  },
  config = function(_, opts)
    vim.g.indentLine_fileTypeExclude = { 'dashboard' }
    require('indent_blankline').setup(opts)
  end
}
