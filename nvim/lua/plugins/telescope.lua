require('funcs.map_funcs')
require('funcs.helpers')

require('packer').use({
  'nvim-telescope/telescope.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
  },
  config = function()
    require('telescope').setup({
      defaults = {
        layout_strategy = 'vertical',
        layout_config = {
          width = 0.75
        },
      },
      extensions = {
        ['fzf'] = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = 'smart_case',
        },
        ['ui-select'] = {
          require('telescope.themes').get_dropdown({})
        }
      }
    })
    require('telescope').load_extension('fzf')
    require('telescope').load_extension('ui-select')

    nnoremap('<Leader>tf', '<cmd>lua require(\'telescope.builtin\').find_files({ cwd = get_project_root(), previewer = false })<CR>')
    nnoremap('<Leader>tl', '<cmd>lua require(\'telescope.builtin\').live_grep({ cwd = get_project_root() })<CR>')
    vnoremap('<Leader>tl', '<cmd>lua require(\'telescope.builtin\').live_grep({ cwd = get_project_root(), default_text = get_visual_selection() })<CR>')

    nnoremap('<Leader>tr', '<cmd>lua require(\'telescope.builtin\').lsp_references()<CR>')
    nnoremap('<Leader>td', '<cmd>lua require(\'telescope.builtin\').lsp_definitions()<CR>')
  end
})
