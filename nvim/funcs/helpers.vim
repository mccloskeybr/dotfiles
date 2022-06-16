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

" cd into a local root that matches something
" in g:local_project_roots
function! CdLocalRoot()
  let l:cur_dir = expand('%:p')
  for l:local_root_pat in g:local_project_roots
    if l:cur_dir =~ l:local_root_pat
      let l:local_root_dir = matchstr(l:cur_dir, l:local_root_pat)
      exec "cd " . l:local_root_dir
      return 1
    endif
  endfor
  return 0
endfunction
