" Toggle between test and source code for JavaScript.
" Maintainer:   Samuel Masuy
" Version:      0.1

nnoremap <silent> <Plug>(test-toggle) :call :<C-u>call cmd#ToggleJavascriptTestFile()<CR>
