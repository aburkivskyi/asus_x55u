set nocompatible
filetype indent on
filetype plugin on
syntax on
colorscheme molokai 
set modeline
set expandtab
set tabstop=2 shiftwidth=2
set softtabstop=2
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set autoindent
set ruler
set incsearch
set hlsearch
set foldenable
nnoremap j gj
nnoremap k gk

" :W sudo saves the file ( like :w with sudo )
command W w !sudo tee % > /dev/null
set mouse=a
set shell=zsh
let mapleader=","
let maplocalleader="\\"
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50

set nobackup
set nowritebackup
set noswapfile
let g:rehash256=1

