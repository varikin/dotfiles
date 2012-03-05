set nocompatible


" Setup pathogen
" Put plugins in ~/.vim/bundle/
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

" Appearance
syntax on
set ruler
set nu

" Searching
set hlsearch
set incsearch
set smartcase
set showmatch


" Editing behavior
set backspace=indent,eol
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set expandtab
set nobackup

set wildmenu
let NERDTreeIgnore=['\.pyc$', '\~$']
set background=dark


autocmd FileType python set omnifunc=pythoncomplete#Complete
