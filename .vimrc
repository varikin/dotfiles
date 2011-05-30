set nocompatible

filetype plugin indent on

" Appearance
syntax on
set ruler

" Searching
set hlsearch
set incsearch
set smartcase


" Editing behavior
set backspace=indent,eol
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set expandtab

let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
set wildmenu
let NERDTreeIgnore=['\.pyc$', '\~$']
set background=dark
colorscheme solarized
