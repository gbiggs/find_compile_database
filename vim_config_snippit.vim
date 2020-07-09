function GetCompDB()
  return substitute(system('find_compile_db -d '.expand('%:p:h')), '\n\+$', '', '')
endfunction

function GetCompDBDir()
  return fnamemodify(GetCompDB(), ':h')
endfunction
