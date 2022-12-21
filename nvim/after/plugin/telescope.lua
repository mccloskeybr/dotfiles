require('default.funcs.map_funcs')
require('default.funcs.helpers')

require('packer').use({
  'nvim-telescope/telescope.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    {'nvim-telescope/telescope-frecency.nvim', requires = {'tami5/sqlite.lua'}},
    {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
  },
  config = function()
    require('telescope').setup({
      defaults = {
        dynamic_preview_title = true,
        layout_strategy = 'vertical',
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
        },
        ['frecency'] = {
          show_scores = true,
        },
      }
    })
    require('telescope').load_extension('fzf')
    require('telescope').load_extension('ui-select')
    require('telescope').load_extension('frecency')

    vim.cmd('hi TelescopeNormal ctermbg=black')

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
    nnoremap('<Leader>tF', '<cmd>lua require("telescope").extensions.frecency.frecency()<CR>')
  end
})
