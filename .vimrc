call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'xolox/vim-misc'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'xolox/vim-easytags'
Plug 'roxma/nvim-yarp'
Plug 'tmux-plugins/vim-tmux'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-sensible'
Plug 'hzchirs/vim-material'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'raimondi/delimitmate'
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

set directory^=$HOME/.vim/tmp//
"no wrap words
set nowrap

""Line Numbers
set relativenumber number

"Tab configuration
"
set expandtab
" size of an "indent"
set shiftwidth=2
""size of a hard tabstop
set softtabstop=2

let mapleader = "\<Space>"
set encoding=utf-8
set clipboard=unnamedplus
set pyxversion=3
let g:deoplete#enable_at_startup = 1
let g:airline_powerline_fonts = 1


" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
nmap <Leader>ff :CtrlP<CR>
nmap <Leader>bb :CtrlPBuffer<CR>
nmap <Leader>br :CtrlPMRU<CR>

nmap <Leader>w <C-W>
nmap <Leader>bd :Bclose<CR>

nmap <Leader>fed :e ~/.vimrc<CR>
nmap <Leader>feR :so ~/.vimrc<CR>

nmap <Leader>sap :Ag 

map <Leader>= mzgg=G`z
packloadall
silent! helptags ALL
