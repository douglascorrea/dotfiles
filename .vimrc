call plug#begin()
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --js-completer --rust-completer' }
Plug 'Valloric/MatchTagAlways'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'xolox/vim-misc'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'xolox/vim-easytags'
Plug 'tmux-plugins/vim-tmux'
Plug 'rbgrouleff/bclose.vim'
Plug 'cespare/vim-toml'
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
Plug 'tpope/vim-rhubarb'
Plug 'tomlion/vim-solidity'
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

set directory=$HOME/.vim/tmp//
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
set clipboard=unnamed
set pyxversion=3
let g:deoplete#enable_at_startup = 1
let g:airline_powerline_fonts = 1

let g:ycm_autoclose_preview_window_after_completion = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript.jsx': 1,
    \ 'javascript' : 1,
    \}
" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
nmap <Leader>ff :CtrlP<CR>
nmap <Leader>bb :CtrlPBuffer<CR>
nmap <Leader>br :CtrlPMRU<CR>
nmap <Leader>fc :CtrlPClearCache<CR>

nmap <Leader>w <C-W>
nmap <Leader>bd :Bclose<CR>

nmap <Leader>fed :e ~/.vimrc<CR>
nmap <Leader>feR :so ~/.vimrc<CR>

nmap <Leader>ft :NERDTreeToggle<CR>

nmap <Leader>sap :Ag 

map <Leader>= mzgg=G`z

map <Leader>R :bufdo e!<CR>

map <Leader>bcn :echo @%<CR>

"https://github.com/webpack/webpack/issues/781
set backupcopy=yes
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!

let NERDTreeShowHidden = 1

packloadall
silent! helptags ALL
