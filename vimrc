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

" Setup Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'kien/ctrlp'
Plugin 'tpope/vim-surround'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'luochen1990/rainbow'
call vundle#end()

syntax on
filetype plugin indent on

" Disable automatic conealing of double quotes by vim-json
let g:vim_json_syntax_conceal = 0

" Indentation
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  " Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Look and feel
let g:onedark_terminal_italics = 1
let g:onedark_termcolors = 16
set background=dark
colorscheme onedark
set numberwidth=4
set number
set colorcolumn=0
set textwidth=100
set formatoptions-=t

" CtrlP
let mapleader = ","
let g:ctrlp_map = "<leader>o"
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

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
set nowrap

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

" Airline
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#nerd_tree#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#show_close_button = 0

" Dash
nmap <silent> <leader>, <Plug>DashSearch

" rainbow
let g:rainbow_active = 1

" NERDTree
map <leader>tt :NERDTreeToggle<CR>
map <leader>tx :NERDTreeClose<CR>
map <leader>to :NERDTreeFind<CR>
