function file_exists(path)
   local f=io.open(path,"r")
   if f~=nil then
     io.close(f)
     return true
   else
     return false
   end
end

function do_if_exists(path)
  if file_exists(path) then
    dofile(path)
  end
end

-- maybe not as elegant as LFS but i don't want to install a lib for this lol
function do_all_in_directory(dir)
  local p = io.popen('find "'..dir..'" -type f')
  for file in p:lines() do
      dofile(file)
  end
end

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
