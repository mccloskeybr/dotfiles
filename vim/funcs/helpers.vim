
" sources the given filepath if a file exists at that path.
function! SourceIfExists(filepath)
  if FileExists(a:filepath)
    execute "source " . a:filepath
  endif
endfunction

