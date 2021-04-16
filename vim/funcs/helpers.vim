" returns true if a file exists at the given filepath
function! FileExists(filepath)
  if filereadable(expand(a:filepath))
    return 1
  else
    return 0
  endif
endfunction

" sources the given filepath if a file exists at that path.
function! SourceIfExists(filepath)
  if FileExists(a:filepath)
    execute "source " . a:filepath
  endif
endfunction

