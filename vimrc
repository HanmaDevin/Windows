set backspace=indent,eol,start
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set relativenumber
set tabstop=4
set ignorecase
set smartcase
set noshowmode
set showmatch
set wildmenu
set wildmode=list:longest
set laststatus=2
set encoding=UTF-8

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'

call plug#end()
