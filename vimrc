filetype plugin indent on " activate filetype plugins
set backspace=2           " backspace in insert mode works like normal editor
syntax off                " syntax highlighting
" set autoindent          " auto indenting
set number                " line numbers
colorscheme default       " colorscheme
set nobackup              " get rid of anoying ~file
set clipboard=unnamed     " use system clipboard for copying
set shiftwidth=4          " default shift width
set expandtab             " expand tabs to spaces
set tabstop=4             " set tabwidth to 4
set noeol                 " no new line at end of file
set visualbell            " diable terminal bell (why is this a thing?!?)

let g:go_fmt_command = "goimports"
let g:rustfmt_autosave = 1
