-- Lua-based plugin configurations
-- ===============================

-- telescope
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        preview_width = 80
        }
    },
    mappings = {
      i = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous,
        ["<c-q>"] = actions.send_to_qflist,
      },
      n = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous,
        ["<c-q>"] = actions.send_to_qflist,
      },
    },
  }
}

-- hop
require('hop').setup{
  multi_windows = true
}
