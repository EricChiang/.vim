call plug#begin('~/.config/nvim/plugged') " specify a directory for plugins
Plug 'fatih/vim-go'
call plug#end()

execute pathogen#infect()

filetype plugin indent on " activate filetype plugins
set backspace=2           " backspace in insert mode works like normal editor
syntax on                 " syntax highlighting
" set autoindent          " auto indenting
set number                " line numbers
colorscheme default       " colorscheme
set nobackup              " get rid of anoying ~file
set clipboard=unnamed     " use system clipboard for copying
set shiftwidth=4          " default shift width
set expandtab             " expand tabs to spaces
set tabstop=4             " set tabwidth to 4
set noeol                 " no new line at end of file

" run goimports on save
let g:go_fmt_command = "goimports"

" move up and down on wrapped lines
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
