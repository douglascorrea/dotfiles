call plug#begin()
Plug 'roxma/nvim-yarp'
Plug 'tpope/vim-sensible'
Plug 'hzchirs/vim-material'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
endif
call plug#end()
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
set background=dark
set t_Co=256
colorscheme base16-material-darker
syntax enable
filetype plugin indent on
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#000000

set autowrite     " Automatically :write before running commands
set showcmd       " display incomplete commands"

highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6


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
 set shiftwidth=2
"
" " a combination of spaces and tabs are used to simulate tab stops at a width
" " other than the (hard)tabstop
set softtabstop=0

let mapleader = "\<Space>"
set encoding=utf-8
set clipboard=unnamedplus
set pyxversion=3
let g:deoplete#enable_at_startup = 1
let g:airline_powerline_fonts = 1

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

packloadall
silent! helptags ALL
