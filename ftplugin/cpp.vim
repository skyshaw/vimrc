if !filereadable(expand("%:p:h")."/Makefile") || !filereadable(expand("%:p:h")."/makefile")
    setlocal makeprg=g++\ –Wall\ –Wextra\ –o\ %<\ %
endif

"%表示当前文件名
":help %<可查, %<表示当前出去扩展名的当前文件名
