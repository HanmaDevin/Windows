set backspace=indent,eol,start
set smartindent
set nocompatible
set noexpandtab
set shiftwidth=0
set softtabstop=0
set smarttab
filetype on
filetype plugin on
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
Plug 'github/copilot.vim'

call plug#end()
