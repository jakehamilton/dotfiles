"==============================
"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
" (_)_/ |_|_| |_| |_|_|  \___|
"
" - by Short
"==============================

" Use bash so vundle works
set shell=/bin/bash

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
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Bottom bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Colors (syntax and airline)
Plugin 'dylanaraps/wal' 

" Support '.editorconfig' files
Plugin 'editorconfig/editorconfig-vim'

" Linting
Plugin 'w0rp/ale'

" Purescript support
Plugin 'purescript-contrib/purescript-vim'
Plugin 'frigoeu/psc-ide-vim'

" Git diffs in the signs column
Plugin 'airblade/vim-gitgutter'

" Better buffer management
Plugin 'qpkorr/vim-bufkill'

" Vue file syntax
Plugin 'posva/vim-vue'

" Smart completion
Plugin 'Shougo/deoplete.nvim'

" JS completions
Plugin 'mhartington/nvim-typescript'

" Done adding plugins
call vundle#end()

" Required for vundle
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Set colorscheme to be handled by wal
colorscheme wal

" Enable line numbering
set number
set relativenumber

" Keep cursor in the center of the screen more
set scrolloff=15

" Ignore case in searches
set ignorecase

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
highlight Comment cterm=italic

" Remove characters between buffers (nvim)
set fillchars=

" Move *.swp files to a centralized location
set backupdir=~/.vim-backup/
set directory=~/.vim-backup/

" Override italic escape codes
" set t_ZH=[3m
" set t_ZR=[23m

" Ensure syntax highlighting doesn't break on Vue files
autocmd FileType vue syntax sync fromstart

" Load powerline fonts (Hack in my case)
let g:airline_powerline_fonts = 1

" Configure linter fixers
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']

" Use deoplete
" call deoplete#enable()
let g:deoplete#enable_at_startup = 1

" Enable jsdoc highlighting
let g:javascript_plugin_jsdoc = 1
