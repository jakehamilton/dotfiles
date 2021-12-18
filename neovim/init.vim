""""""""""""""""""""""""""""""""""""""""""""
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"░░█▀█░█░░░█░█░█▀▀░░░█░█░█░░░▀█▀░█▀▄░█▀█░░"
"░░█▀▀░█░░░█░█░▀▀█░░░█░█░█░░░░█░░█▀▄░█▀█░░"
"░░▀░░░▀▀▀░▀▀▀░▀▀▀░░░▀▀▀░▀▀▀░░▀░░▀░▀░▀░▀░░"
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set encoding=utf-8
set mouse=a
scriptencoding utf-8

"""""""""""""""""""""""""""""""""
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"░░█▀█░█░░░█░█░█▀▀░▀█▀░█▀█░█▀▀░░"
"░░█▀▀░█░░░█░█░█░█░░█░░█░█░▀▀█░░"
"░░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░░"
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"""""""""""""""""""""""""""""""""

filetype plugin indent on

" Install plug if it isn't already
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    augroup PLUG
        au!
        autocmd VimEnter * PlugInstall
    augroup END
endif

" Start plug with custom directory
call plug#begin('~/.config/nvim/plugged')

" Language server support
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \}

" Fuzzy find
Plug 'junegunn/fzf'

" Completions
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Comments
Plug 'tpope/vim-commentary'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Bufferlist (integrates with airline)
Plug 'bling/vim-bufferline'

" Color scheme
Plug 'dracula/vim', { 'as': 'dracula' }

" Language support
Plug 'sheerun/vim-polyglot'

" Simplify movement
Plug 'easymotion/vim-easymotion'

" Simplify file management
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Format using prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Make markdown fun again
Plug 'junegunn/limelight.vim'

" Better buffer management
Plug 'qpkorr/vim-bufkill'

" Utilities
Plug 'xolox/vim-misc'

" Notes
Plug 'xolox/vim-notes'

" End adding plugin configuration and initialize
call plug#end()

" Enable syntax and set color scheme
syntax on

"""""""""""""""""""""""""""""""""""""""""
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"░░█░█░█▀█░█▀▄░▀█▀░█▀█░█▀▄░█░░░█▀▀░█▀▀░░"
"░░▀▄▀░█▀█░█▀▄░░█░░█▀█░█▀▄░█░░░█▀▀░▀▀█░░"
"░░░▀░░▀░▀░▀░▀░▀▀▀░▀░▀░▀▀░░▀▀▀░▀▀▀░▀▀▀░░"
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"""""""""""""""""""""""""""""""""""""""""

" Remap leader to space
let mapleader=" "

" Required for operations modifying multiple buffers
set hidden

" Enable relative numbers
set number
set relativenumber

" Folding
set nofoldenable
set foldmethod=syntax

" Set tabs to use spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Highlight the current line
set cursorline
hi CursorLine term=bold cterm=bold

" Limelight color settings
let g:limelight_conceal_ctermfg = 240

" Enable deoplete
let g:deoplete#enable_at_startup = 1

" Airline theme
let g:airline_theme='deus'

" Enable glyphs in airline
let g:airline_powerline_fonts = 1

" Enable buffers in tabline
let g:airline#extensions#tabline#enabled = 1

" Enable buffers in airline
let g:airline#extensions#bufferline#enabled = 1

" Store notes in documents
let g:notes_directories = ['~/Documents/notes']

" Use markdown extension (the syntaxes are close enough)
let g:notes_suffix = '.md'

"""""""""""""""""""""""""""""""""""""""""""""""""
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"░░█░█░█▀▀░█░█░█▀▄░▀█▀░█▀█░█▀▄░▀█▀░█▀█░█▀▀░█▀▀░░"
"░░█▀▄░█▀▀░░█░░█▀▄░░█░░█░█░█░█░░█░░█░█░█░█░▀▀█░░"
"░░▀░▀░▀▀▀░░▀░░▀▀░░▀▀▀░▀░▀░▀▀░░▀▀▀░▀░▀░▀▀▀░▀▀▀░░"
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"""""""""""""""""""""""""""""""""""""""""""""""""

" Remap leader to space
nnoremap <Space> <Nop>
map <Space> <Leader>

" Allow returning to previous buffer easily
nnoremap <C-y> <C-^>

" Turn on limelight easily
nmap <silent> <Leader>l :Limelight!!<CR>
xmap <silent> <Leader>l :Limelight!!<CR>

" Simplify window navigation
nnoremap <silent> <C-h> <C-w><C-h>
nnoremap <silent> <C-j> <C-w><C-j>
nnoremap <silent> <C-k> <C-w><C-k>
nnoremap <silent> <C-l> <C-w><C-l>

" Interact with language server
map <silent> <C-Space> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> gh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient#textDocument_documentSymbol()<CR>
nnoremap <silent> gR :call LanguageClient#textDocument_rename()<CR>

" Make completion easier
inoremap <silent> <C-p> <C-x><C-o>

" Toggle file manager
map <silent> <C-n> :NERDTreeToggle<CR>

" Delete the current buffer
map <silent> <C-c> :BD<CR>
map <silent> <Leader>bd :BD<CR>

" Next buffer
map <silent> <Leader>bn :bn<CR>

" Previous buffer
map <silent> <Leader>bp :bp<CR>

" Enter terminal easily
map <silent> <Leader><Leader>t :vs term://fish<CR>

" Exit terminal mode easily
tnoremap <silent> <C-o> <C-\><C-n><CR>

"""""""""""""""""""""""""""""""""""""
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"░░█░░░█▀█░█▀█░█▀▀░█░█░█▀█░█▀▀░█▀▀░░"
"░░█░░░█▀█░█░█░█░█░█░█░█▀█░█░█░█▀▀░░"
"░░▀▀▀░▀░▀░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀▀▀░░"
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"""""""""""""""""""""""""""""""""""""

" Automatically start language servers
let g:LanguageClient_autoStart = 1

" Vue syntax fix
autocmd FileType vue syntax sync fromstart

" Language server commands
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'vue': ['vls'],
    \ 'c': ['cquery', '--log-file=/tmp/cq.log'],
    \ 'cpp': ['cquery', '--log-file=/tmp/cq.log']
    \}

" Use config file for language server
let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '/home/short/.config/nvim/settings.json'

" Configure deoplete to use language server
call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)

"""""""""""""""""""""""""""""""""
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"░░█▀█░█░█░▀█▀░█▀█░█▀▀░█▄█░█▀▄░░"
"░░█▀█░█░█░░█░░█░█░█░░░█░█░█░█░░"
"░░▀░▀░▀▀▀░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀░░░"
"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
"""""""""""""""""""""""""""""""""

" Start nerdtree when vim is opened with an empty directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Unfold code by default
augroup OpenAllFoldsOnFileOpen
    autocmd!
    autocmd BufRead * normal zR
augroup END
