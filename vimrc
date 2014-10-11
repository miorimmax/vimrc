" Setup pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on
"
" Disable automatic conealing of double quotes by vim-json
let g:vim_json_syntax_conceal = 0

" Indentation
set expandtab
set tabstop=4 shiftwidth=4 softtabstop=4
set autoindent

" Look and feel
colorscheme zenburn
set number
set cursorline
set cursorcolumn
set colorcolumn=100

" CtrlP
let mapleader = ","
let g:ctrlp_map = "<Leader>f"

" Search
set incsearch
set hlsearch

" Status line
set laststatus=2
set ruler
set showcmd
set wildmenu

" Scrolling
set scrolloff=4
set sidescrolloff=4

" File encoding
set encoding=utf-8

" matchit.vim
" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
    runtime! macros/matchit.vim
endif
