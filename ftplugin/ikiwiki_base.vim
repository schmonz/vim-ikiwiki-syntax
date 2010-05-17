setlocal ai formatoptions=tcroqn2 comments=n:>
setlocal tw=80

setlocal foldmethod=expr
setlocal foldexpr=HeadingLevel(v:lnum)
if !exists("*HeadingLevel")
  function HeadingLevel(lnum)
    " n = number of consecutive '#' at start of line
    let n = strlen(substitute(getline(a:lnum), '[^#].*', '', ''))
    return (n == 0) ? '=' : '>' . n
  endfunction
endif

" bold, italic definition for surround (see :help surround)
let b:surround_98 = "**\r**"
let b:surround_105 = "*\r*"
