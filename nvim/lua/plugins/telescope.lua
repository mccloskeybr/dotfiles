local actions = require('telescope.actions')
require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      width = 0.75
    },
    mappings = {
      i = {
        ['<c-j>'] = actions.move_selection_next,
        ['<c-k>'] = actions.move_selection_previous,
        ['<c-q>'] = actions.send_to_qflist,
      },
      n = {
        ['<c-j>'] = actions.move_selection_next,
        ['<c-k>'] = actions.move_selection_previous,
        ['<c-q>'] = actions.send_to_qflist,
      },
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
      require('telescope.themes').get_dropdown {
      }
    }
  }
})
require('telescope').load_extension('fzf')
require('telescope').load_extension('ui-select')
