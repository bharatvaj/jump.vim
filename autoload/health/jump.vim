func! health#jump#check() abort
  let l:autojump_path=exepath(g:autojump_executable)
  if empty(l:autojump_path)
    call health#report_error("Cannot find in PATH, g:autojump_executable=" . l:autojump_path)
  else
    call health#report_ok("Found g:autojump_executable=" . l:autojump_path)
  endif
endfunc

