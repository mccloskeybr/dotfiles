file_exists = function(path)
   local f=io.open(path,"r")
   if f~=nil then
     io.close(f)
     return true
   else
     return false
   end
end

do_if_exists = function(path)
  if file_exists(path) then
    dofile(path)
  end
end

-- maybe not as elegant as LFS but i don't want to install a lib for this lol
do_all_in_directory = function(dir)
  if file_exists(dir) then
    local p = io.popen('find "'.. dir ..'" -type f')
    for file in p:lines() do
        dofile(file)
    end
  end
end
