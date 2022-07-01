require("funcs.map_funcs")

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

function telescope_opts()
  -- cwd to project directory root if possible.
  local current_file = vim.fn.expand('%')
  local project_root = vim.fn.fnamemodify(current_file, ":p:h:s?/croupier/.*?/croupier/?")
  local opts = { cwd = project_root }
  return opts
end

nnoremap("<Leader>tf", "<cmd>lua require(\"telescope.builtin\").find_files(telescope_opts())<CR>")
nnoremap("<Leader>tl", "<cmd>lua require(\"telescope.builtin\").live_grep(telescope_opts())<CR>")
