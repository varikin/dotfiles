set nocompatible

" My bundles (vundle is requried)
" Vundle doesn't like comments after the bundle?!
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" Awesome git stuff
Bundle 'tpope/vim-fugitive'
" Super sweet TextMate tab-completion
Bundle 'ervandew/supertab'
" Powerline is sweet looking!
Bundle 'Lokaltog/powerline'
" Super awesome syntax & error highlighter
Bundle 'Syntastic'

filetype plugin indent on       " Load file type plugins & indentation
syntax on                       " Because I value sanity
set encoding=utf-8              " Again, sanity
set nobackup                    " Stop with the stupid ~ file
set showcmd                     " Display incomplete commands
set ruler                       " I like rulers
set number                      " Line numbers are great

set hlsearch                    " Highlight search
set incsearch                   " Incremental seaching; helps my bad spelling
set ignorecase                  " I am too lazy to search case sensative
set smartcase                   " Unless there is an upper case letter
set showmatch                   " Show matching braces


set backspace=indent,eol,start  " Delete through everything in insert mode
set tabstop=4                   " 4 space tabs
set softtabstop=4               " 4 space tabs
set shiftwidth=4                " Again 4 space tabs
set smartindent                 " Lets be smart about intenting my programs
set expandtab                   " Spaces, not tabs

set wildmenu                    " Never really figured this out
set background=dark             " Darkness descend upon the world

" <Esc> to jj This is fucking crazy (:
noremap! jj <Esc>

" Powerline!
set laststatus=2                " Ensure room for powerline!
set noshowmode                  " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

autocmd FileType python set omnifunc=pythoncomplete#Complete