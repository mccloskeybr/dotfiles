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
  if file_exists(dir) then
    local p = io.popen('find "'.. dir ..'" -type f')
    for file in p:lines() do
        dofile(file)
    end
  end
end
