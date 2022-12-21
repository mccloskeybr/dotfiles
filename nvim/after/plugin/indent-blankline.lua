require('packer').use({
  'lukas-reineke/indent-blankline.nvim',
  config = function()
    vim.g.indentLine_fileTypeExclude = {'dashboard'}
    require('indent_blankline').setup({
      show_current_context = true,
      char_space_blankline = " ",
      char_highlight_list = {
        'LineNr',
      },
    })
  end
})
