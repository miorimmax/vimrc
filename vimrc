" Setup pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" Disable automatic conealing of double quotes by vim-json
let g:vim_json_syntax_conceal = 0
