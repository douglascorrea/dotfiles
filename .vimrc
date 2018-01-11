call plug#begin()
Plug 'tpope/vim-sensible'
call plug#end()
syntax on
filetype plugin indent on
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#000000

set autowrite     " Automatically :write before running commands
set showcmd       " display incomplete commands"

"no wrap words
"set nowrap
"
""Line Numbers
set relativenumber number

"Tab configuration
"
"set expandtab
""size of a hard tabstop
set tabstop=8

" size of an "indent"
 set shiftwidth=4
"
" " a combination of spaces and tabs are used to simulate tab stops at a width
" " other than the (hard)tabstop
set softtabstop=0

let mapleader = "\<Space>"
