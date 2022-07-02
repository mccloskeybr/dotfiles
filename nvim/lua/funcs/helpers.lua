-- https://www.reddit.com/r/neovim/comments/oo97pq/how_to_get_the_visual_selection_range/
function get_visual_selection()
  vim.cmd('noau normal! "vy"')
  print(vim.fn.getreg('v'))
  return vim.fn.getreg('v')
end

function get_project_root()
  local current_file = vim.fn.expand('%')
  local project_root = vim.fn.fnamemodify(current_file, ":p:h:s?/croupier/.*?/croupier/?")
  return project_root
end
