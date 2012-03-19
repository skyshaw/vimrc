function g:dotClang()
    let s:currdir = expand('%:p:h')
    let s:target = '~/.vim/misc/clang_complete'
    let s:cmd = 'ln -s ' . s:target . ' .clang_complete'
    call system(s:cmd)
endfunction
