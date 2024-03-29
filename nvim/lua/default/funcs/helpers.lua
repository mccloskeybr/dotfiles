-- https://www.reddit.com/r/neovim/comments/oo97pq/how_to_get_the_visual_selection_range/
function get_visual_selection()
  vim.cmd('noau normal! "vy"')
  return vim.fn.getreg('v')
end

function get_project_root()
  local current_file = vim.fn.expand('%')
  local project_root = vim.fn.fnamemodify(current_file, ':p:h:s?/croupier/.*?/croupier/?')
  return project_root
end

function get_build_target()
  local current_file_dir = vim.fn.expand('%:p:h')
  local current_file_from_google3_dir = vim.fn.fnamemodify(current_file_dir, ':s?.*google3/??')
  local current_file_name = vim.fn.expand('%:t:r')
  return '//' .. current_file_from_google3_dir .. ':' ..  current_file_name
end

function get_test_target()
  local build_target = get_build_target()
  if string.sub(build_target, -5) == '_test' then
    return build_target
  end
  return build_target .. '_test'
end
