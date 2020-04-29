filetype plugin indent on " activate filetype plugins
set backspace=2           " backspace in insert mode works like normal editor
syntax off                " syntax highlighting
" set autoindent          " auto indenting
set number                " line numbers
set ruler                 " column numbers
colorscheme default       " colorscheme
set nobackup              " get rid of anoying ~file
set clipboard=unnamed     " use system clipboard for copying
set shiftwidth=4          " default shift width
set noexpandtab           " don't expand tabs to spaces
set tabstop=4             " set tabwidth to 4
set noeol                 " no new line at end of file
set belloff=all           " diable terminal bell (why is this a thing?!?)

" Formatters for various languages

autocmd BufWritePost *.rs :normal ma
autocmd BufWritePost *.rs silent !rustfmt <afile> 2>/dev/null
autocmd BufWritePost *.rs edit
autocmd BufWritePost *.rs :normal `a

autocmd BufWritePost *.go :normal ma
autocmd BufWritePost *.go silent !goimports -w <afile> 2>/dev/null
autocmd BufWritePost *.go edit
autocmd BufWritePost *.go :normal `a
