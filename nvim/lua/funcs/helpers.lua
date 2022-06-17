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
    return true
  else
    return false
  end
end
