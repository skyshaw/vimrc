if !filereadable(expand("%:p:h")."/Makefile") || !filereadable(expand("%:p:h")."/makefile")
    setlocal makeprg=gcc\ –Wall\ –Wextra\ –o\ %<\ %
endif
