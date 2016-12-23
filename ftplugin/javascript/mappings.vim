" Toggle between test and source code for JavaScript.
" Maintainer:   Samuel Masuy
" Version:      0.1

" command TestToggle :call <SID>toggleJavascriptTestFile()<CR>
nnoremap <silent> <Plug>(test-toggle) :call :<C-u>call cmd#ToggleJavascriptTestFile()<CR>

" function! s:openFile(name)
"   try
"     execute 'find' a:name
"   catch /.*/
"     echo "couldn't find" a:name
"   endtry
" endfunction

" function! s:toggleJavascriptTestFile()
"   let l:fullpath = (@%)
"   let l:filename = expand ("%:t")
"   if (l:filename =~ ".test.js")
"     let l:src = substitute(l:fullpath, ".test.js", ".js", "")
"     call s:openFile(l:src)
"   elseif (l:filename =~ ".js")
"     let l:test = substitute(l:fullpath, ".js", ".test.js", "")
"     call s:openFile(l:test)
"   else
"     echo "Not a javascript file"
"   endif
" endfunction
