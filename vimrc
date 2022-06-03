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

" Open file viewer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 10
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" Formatters for various languages

autocmd BufWritePost *.go :normal ma
autocmd BufWritePost *.go silent !goimports -w <afile> 2>/dev/null
autocmd BufWritePost *.go edit
autocmd BufWritePost *.go :normal `a

autocmd BufWritePost *.cc :normal ma
autocmd BufWritePost *.cc silent !clang-format -i <afile> 2>/dev/null
autocmd BufWritePost *.cc edit
autocmd BufWritePost *.cc :normal `a

autocmd BufWritePost *.h :normal ma
autocmd BufWritePost *.h silent !clang-format -i <afile> 2>/dev/null
autocmd BufWritePost *.h edit
autocmd BufWritePost *.h :normal `a

autocmd BufWritePost *.rs :normal ma
autocmd BufWritePost *.rs silent !rustfmt <afile> 2>/dev/null
autocmd BufWritePost *.rs edit

" Go pls stuff

function! GoRenameFunc(name)
        let pos = getpos(".")
        let line = pos[1]
        let col = pos[2]
        execute "silent !gopls rename -w " . @% . ":" . line . ":" . col ." " . a:name
        :edit
        call setpos(".", pos)
        :redraw!
endfunction

:command -nargs=1 GoRename call GoRenameFunc("<args>")
