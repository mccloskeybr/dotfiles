require('default.funcs.map_funcs')
require('default.funcs.helpers')

require('packer').use({
  'nvim-telescope/telescope.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    'debugloop/telescope-undo.nvim',
  },
  config = function()
    require('telescope').setup({
      defaults = {
        dynamic_preview_title = true,
        layout_strategy = 'vertical',
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown({})
        },
      }
    })
    require('telescope').load_extension('ui-select')
    require('telescope').load_extension('undo')

    nnoremap('<Leader>tf', '<cmd>lua require("telescope.builtin").find_files({' ..
      'cwd = get_project_root(),' ..
      'previewer = false' ..
      '})<CR>')
    vnoremap('<Leader>tf', '<cmd>lua require("telescope.builtin").find_files({' ..
      'cwd = get_project_root(),' ..
      'previewer = false,' ..
      'default_text = get_visual_selection()' ..
      '})<CR>')

    nnoremap('<Leader>tl', '<cmd>lua require("telescope.builtin").live_grep({' ..
      'cwd = get_project_root(),' ..
      'path_display = {"shorten"}' ..
      '})<CR>')
    vnoremap('<Leader>tl', '<cmd>lua require("telescope.builtin").live_grep({' ..
      'cwd = get_project_root(),' ..
      'path_display = {"shorten"},' ..
      'default_text = get_visual_selection()' ..
      '})<CR>')

    nnoremap('<Leader>tr', '<cmd>lua require("telescope.builtin").lsp_references()<CR>')
    nnoremap('<Leader>td', '<cmd>lua require("telescope.builtin").lsp_definitions()<CR>')
    nnoremap('<Leader>tb', '<cmd>lua require("telescope.builtin").buffers()<CR>')
    nnoremap('<Leader>tu', '<cmd>lua require("telescope").extensions.undo.undo()<CR>')
  end
})
