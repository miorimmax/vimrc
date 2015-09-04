"
" Copyright (c) 2014 Max Miorim
" 
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
" 
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
" 
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
"

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
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

" Look and feel
"let g:zenburn_force_dark_Background = 1
set background=dark
colorscheme solarized
set number
set cursorline
set cursorcolumn
set colorcolumn=98
set textwidth=98
set formatoptions-=t

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

" Enable mouse
set mouse=a

" Backspace
set backspace=indent,eol,start

" Split
set splitbelow
set splitright
nnoremap <C-J> <C-W><S-J>
nnoremap <C-K> <C-W><S-K>
nnoremap <C-L> <C-W><S-L>
nnoremap <C-H> <C-W><S-H>
