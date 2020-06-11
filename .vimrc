set nocompatible              " be iMproved, required
filetype off                  " required

" let g:ycm_path_to_python_interpreter = '/Applications/anaconda3/bin/python'
" let g:ycm_python_interpreter_path = '/Applications/anaconda3/bin/python'
let g:ycm_global_ycm_extra_conf = '/Users/fanbeishuang/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:pymode_rope_complete_on_dot = 0

let g:ycm_server_use_vim_stdout = 0
" let g:ycm_server_keep_logfiles = 1
let g:ycm_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
" YouCompleteMe插件相关配置
" 开启debug模式
let g:ycm_log_level = 'debug'
" 使用当前环境的Python版本
let g:ycm_python_binary_path = 'python'
" 选定提示词后自动关闭提示窗口
let g:ycm_autoclose_preview_window_after_completion=1
" 自定义跳转快捷键为gl
nnoremap gl :YcmCompleter GoToDefinitionElseDeclaration<CR>


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Bundle 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
" Plugin 'cormacrelf/vim-colors-github'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

execute pathogen#infect()
colorscheme molokai

syntax on
set nu!

" :hi CursorLineNr NONE
" :hi clear CursorLineNr  #this will set the given group's highlight setting to default.
set hlsearch

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

" au BufNewFile,BufRead *.py
" \ set tabstop=4
" \ set softtabstop=4
" \ set shiftwidth=4
" \ set textwidth=79
" \ set expandtab
" \ set autoindent
" \ set fileformat=unix

" @airline
set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩
let g:airline#extensions#tabline#enabled = 1   " 是否打开tabline
"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1
set laststatus=2  "永远显示状态栏
let g:airline_theme='bubblegum' "选择主题
let g:airline#extensions#tabline#enabled=1    "Smarter tab line: 显示窗口tab和buffer
"let g:airline#extensions#tabline#left_sep = ' '  "separater
"let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
"let g:airline#extensions#tabline#formatter = 'default'  "formater
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'

set tags+=$HOME/.vim/tags/python.ctags

""" YouCompleteMe
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'go' : ['.'],
  \   'objc' : ['->', '.'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

" set backspace=2
command! Jsonf :execute '%!python -m json.tool'
  \ | :execute '%!python -c "import re,sys;sys.stdout.write(re.sub(r\"\\\u[0-9a-f]{4}\", lambda m:m.group().decode(\"unicode_escape\").encode(\"utf-8\"), sys.stdin.read()))"'

let g:go_fmt_command = "goimports"
