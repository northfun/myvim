set nocompatible              " be iMproved, required
filetype off                  " required
    
set hlsearch
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Bundle 'majutsushi/tagbar'
" Bundle \"Lokaltog/vim-powerline"
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-bufferline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
call pathogen#infect()  
filetype plugin indent on    " required

let mapleader=','

let g:gofmt_command = "goimports"
autocmd BufWritePre *.go :GoImports

let g:tagbar_type_go = {   
    \ 'ctagstype' : 'go',  
    \ 'kinds'     : [   
        \ 'p:package',  
        \ 'i:imports:1',  
        \ 'c:constants',  
        \ 'v:variables',  
        \ 't:types',  
        \ 'n:interfaces',  
        \ 'w:fields',  
        \ 'e:embedded',  
        \ 'm:methods',  
        \ 'r:constructor',  
        \ 'f:functions'  
    \ ],  
    \ 'sro' : '.',  
    \ 'kind2scope' : {   
        \ 't' : 'ctype',  
        \ 'n' : 'ntype'  
    \ },  
    \ 'scope2kind' : {   
        \ 'ctype' : 't',  
        \ 'ntype' : 'n'  
    \ },  
    \ 'ctagsbin'  : 'gotags',  
    \ 'ctagsargs' : '-sort -silent'  
    \ }

let g:ycm_server_python_interpreter='/usr/bin/python'
set laststatus=2

" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tmuxline#enabled = 0
let g:Powerline_symbols='unicode'
let g:airline_theme="dark"
let g:bufferline_echo = 0
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTree<CR>

let mapleader=";"

noremap <F2> :bprev<CR>
noremap <F3> :bnext<CR>

nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>                " turn off YCM
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>                " turn on YCM

" syntax on  
" filetype plugin indent on
