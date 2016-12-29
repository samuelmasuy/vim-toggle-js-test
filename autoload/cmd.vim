" vim-toggle-js-test.vim - Toggle between test and source code for JavaScript.
" Maintainer:   Samuel Masuy
" Version:      0.1

function! cmd#openFile(name)
  try
    execute 'find' a:name
  catch /.*/
    echo "couldn't find" a:name
  endtry
endfunction

function! cmd#ToggleJavascriptTestFile()
  let l:fullpath = (@%)
  let l:filename = expand ("%:t")
  if (l:filename =~ ".test.js")
    let l:src = substitute(l:fullpath, "\\.test\\.js$", ".js", "")
    call cmd#openFile(l:src)
  elseif (l:filename =~ ".js")
    let l:test = substitute(l:fullpath, "\\.js$", ".test.js", "")
    call cmd#openFile(l:test)
  else
    echo "Not a javascript file"
  endif
endfunction
