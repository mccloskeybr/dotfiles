return {
  'lukas-reineke/indent-blankline.nvim',
  commit = '9637670896b68805430e2f72cf5d16be5b97a22a',
  event = 'VeryLazy',
  opts = {
    char_space_blankline = ' ',
    char_highlight_list = { 'LineNr' },
  },
  config = function(_, opts)
    vim.g.indentLine_fileTypeExclude = { 'dashboard' }
    require('indent_blankline').setup(opts)
  end
}
