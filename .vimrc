execute pathogen#infect()
syntax on
filetype plugin indent on

set autowrite     " Automatically :write before running commands
set showcmd       " display incomplete commands"

"Line Numbers
set number

"Tab configuration

set expandtab
"size of a hard tabstop
set tabstop=8

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=0

"let g:solarized_termcolors=256
" Color scheme for base16-eighties
"let base16colorspace=256
set background=dark
colorscheme base16-londontube

" Mac OSX Clipboard
set clipboard=unnamed

"Airline Theme
let g:airline_theme = 'base16_google'
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 2

" Make YouCompleteMe use tags
let g:ycm_collect_identifiers_from_tags_files = 0

" Disable Folding of vim-markdown
let g:vim_markdown_folding_disabled = 1
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1

" Options for Vim Markdown Preview


" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Mapping the leader to space
let mapleader = "\<Space>"

" CtrlP with Leader
nnoremap <Leader>o :CtrlP<CR>

" Navigation with leader
nnoremap <Leader>p :bprevious<CR>
noremap <Leader>n :bnext<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>q :bdelete<CR>

"NERDTree
nnoremap <Leader>e :NERDTreeToggle<CR>

"Indentation from upcase course
nnoremap <Leader>i mmgg=G`m

"line number colors
highlight LineNr ctermfg=grey ctermbg=black
