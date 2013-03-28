set nocompatible


" Setup Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My bundles (vundle is requried)
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'


filetype plugin indent on

" Appearance
syntax on
set ruler
set nu

" Searching
set hlsearch
set incsearch
set ignorecase
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
set background=dark


autocmd FileType python set omnifunc=pythoncomplete#Complete
