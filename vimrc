set nocompatible

" My bundles (vundle is required)
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'              " Bootstrap Vundle
Plugin 'tpope/vim-fugitive'             " Awesome git stuff
Plugin 'ervandew/supertab'              " Super sweet TextMate tab-completion
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'} " Powerline is sweet looking!
Plugin 'Syntastic'                      " Super awesome syntax & error highlighter
Plugin 'nsf/gocode', {'rtp': 'vim/'}    " Go!
Plugin 'jnwhiteh/vim-golang'
Plugin 'fholgado/minibufexpl.vim'       " MiniBufExplorer
Plugin 'tpope/vim-markdown'             " Markdown
Plugin 'tpope/vim-endwise'              " Added block enders
Plugin 'kchmck/vim-coffee-script'       " Coffeescript

call vundle#end()        

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

" Powerline!
set laststatus=2                " Ensure room for powerline!
set noshowmode                  " Hide the default mode text (e.g. -- INSERT -- below the statusline)

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd BufNewFile,BufRead *.message set filetype=proto
autocmd BufNewFile,BufRead *.structure set filetype=proto

" Mappings
:let mapleader = ','

" Close buffer
map <leader>w :bd<cr>

" Switch windows
map <leader>t <C-w>w

" <Esc> to jj This is fucking crazy (:
inoremap jj <Esc>
