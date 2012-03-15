call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Variable Setting
if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:iswindows=1
else
    let g:iswindows=0
endif

if has("win32")
    let $VIMFILES = $VIM.'/vimfiles'
else
    let $VIMFILES = $HOME.'/.vim'
endif

let g:vimwiki_list = [{'path': '$HOME/Documents/docs/wiki',  
    \ 'path_html': '$HOME/Documents/docs/wiki/',
    \ 'template_path': '$HOME/Documents/docs/wiki/wiki_template/',
    \ 'template_default': 'def_template',
    \ 'template_ext': '.tpl',
    \ 'diary_link_count': 5}]
map <F6> <Esc>:VimwikiAll2HTML<CR>

"set lines=50 columns=80
set autoindent
"set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set showmatch
"set guioptions-=T
set ruler
set incsearch
set cindent
set nu
colorscheme desert
syntax on
filetype plugin on
filetype indent on
set laststatus=2 "显示状态栏(默认值为1，无法显示)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
set noic
set completeopt=preview
"noremap <F7> <S-V>
"noremap <F8> <C-V>
"?set Tlist_Inc_Winwidth=0

vmap <C-V> "+gp
"nmap <C-V> "+gp
imap <C-V> <Esc>"+gpa

vmap <C-C> "+y
"nmap <C-C> "+yy
imap <C-C> <Esc>"+yya

"vmap <C-X> "+d
"nmap <C-X> "+dd
"imap <C-X> <Esc>"+dda

nmap <C-O> o<Esc>
nmap <S-O> O<Esc>

"pysmell
autocmd FileType python set omnifunc=pysmell#Complete
imap <F4> <C-X><C-O>

"pydiction
"pydiction 1.2 python auto complete  
filetype plugin on  
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
"defalut g:pydiction_menu_height == 15  
let g:pydiction_menu_height = 20 



"===========================================================================
"Mappings Begin

"map <F7> <ESC>:call g:hguard()<CR>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jj <esc>
"inoremap <left> <nop>
"inoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>



augroup c_cpp_config
    autocmd! 
    autocmd FileType c,cpp inoremap { {}<ESC>i<CR><ESC>O
    autocmd FileType c,cpp inoremap {} {}<ESC>i<CR><ESC>O
    autocmd FileType c,cpp inoremap cm /**/<ESC>hi
    autocmd FileType c,cpp inoremap ( ()<left>
    "inoremap { {}<left>
    autocmd FileType c,cpp inoremap () ()<left>
    "inoremap {} {}<left>
    autocmd FileType cpp        nnoremap <buffer> <localleader>c I//
augroup End
    



autocmd FileType javascript nnoremap <buffer> <localleader>c I//
autocmd FileType python     nnoremap <buffer> <localleader>c I#
autocmd FileType lua        nnoremap <buffer> <localleader>c I--

onoremap in@ :<c-u>normal! /[^ \t]\+@[^ \t]\+\.[^ \t]\+<cr>vf<space>

map <F6> <ESC>:VimwikiAll2HTML<CR>
imap <F4> <C-X><C-O>
nmap <C-Z>  <ESC>:undo<CR>
imap <C-Z>  <ESC>:undo<CR>
vmap <C-C>  "+y
imap <C-V>  <ESC>p

"Mappings End
"===========================================================================
let g:clang_complete_copen = 1

