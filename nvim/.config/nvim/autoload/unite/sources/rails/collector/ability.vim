"
" gather candidates
"
function! unite#sources#rails#collector#ability#candidates(source)
  let target = a:source.source__rails_root . '/app/abilities'
  return unite#sources#rails#helper#gather_candidates_file(target)
endfunction
