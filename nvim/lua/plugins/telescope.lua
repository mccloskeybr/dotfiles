local actions = require('telescope.actions')
require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      width = 0.75
    },
    mappings = {
      i = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
      },
      n = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
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
      require('telescope.themes').get_dropdown({})
    }
  }
})
require('telescope').load_extension('fzf')
require('telescope').load_extension('ui-select')

-- function to call find_files in the project root if available.

