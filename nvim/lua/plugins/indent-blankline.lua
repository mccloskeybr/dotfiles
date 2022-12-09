require('packer').use({
  'lukas-reineke/indent-blankline.nvim',
  config = function()
    vim.cmd('hi IndentBlankline ctermfg=239')
    require('indent_blankline').setup({
      show_current_context = true,
      char_space_blankline = " ",
      char_highlight_list = {
        'IndentBlankline',
      },
    })
  end
})
