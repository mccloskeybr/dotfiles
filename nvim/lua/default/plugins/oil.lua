return {
  'stevearc/oil.nvim',
  cmd = 'Oil',
  keys = {
    {
      '<Leader>o',
      mode = {'n'},
      function()
        require('oil').open()
      end,
    },
  },
  config = function()
    require('oil').setup({
      default_file_explorer = true,
      columns = { 'icons', 'permissions', 'size', 'mtime' },
      view_options = {
        show_hidden = false,
        is_hidden_file = function(name, bufnr)
          return vim.endswith(name, '.orig')
        end
      },
    })
  end
}
