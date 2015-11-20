" Load vundle
if filereadable(expand("~/.vim/.vimrc.vundle"))
    source ~/.vim/.vimrc.vundle
endif


" Basic settng
set tabstop=4 softtabstop=4 expandtab shiftwidth=4
set nocompatible
set backspace=indent,eol,start
let mapleader=","
map ,s :exec 'source ~/.vimrc'<CR>
syntax enable
au BufNewFile,BufRead *.swift set filetype=swift

" Load Plugin
if filereadable(expand("~/.vim/.vimrc.plugin"))
    source ~/.vim/.vimrc.plugin
endif
