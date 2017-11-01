"==============================
"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
" (_)_/ |_|_| |_| |_|_|  \___|
"
" - by Short
"==============================

" Be iMproved (required)
set nocompatible

" Required for vundle
filetype off

" Extend runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Start adding plugins
call vundle#begin()

" Let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'

" Language syntax highlighting
Plugin 'sheerun/vim-polyglot'

" File system management
Plugin 'scrooloose/nerdtree'

" Done adding plugins
call vundle#end()

" Required for vundle
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Enable line numbering
set number
set relativenumber

" Keep cursor in the center of the screen more
set scrolloff=20

" Indenting rules
set tabstop=2
set shiftwidth=2
set expandtab

" Open NERDTree if no files were selected
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree even when files are selected
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Bind NERDTree to <C-n>
map <C-n> :NERDTreeToggle<CR>

" Bind window movement to control + direction
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Use italics in things like comments and properties
hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic
