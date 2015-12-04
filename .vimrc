" Load vundle
if filereadable(expand("~/.vim/.vimrc.vundle"))
    source ~/.vim/.vimrc.vundle
endif


" Basic setting
" {
    set tabstop=4 softtabstop=4 expandtab shiftwidth=4
    set nocompatible
    set backspace=indent,eol,start
    let mapleader=","
    syntax enable
    au BufNewFile,BufRead *.swift set filetype=swift
    set clipboard=unnamed
    set laststatus=2
    set incsearch

    " some map
    " {
        map ,e :Explore .<CR>
        map ,s :exec 'source ~/.vimrc'<CR>
        map <c-n> :bn<CR>
        map <c-p> :bp<CR>
    " }
    
    nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
    inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>

    " load abbreviations
    if filereadable(expand("~/.vim/.vimrc.abbr"))
        source ~/.vim/.vimrc.abbr
    endif

    " load template
    function! LoadTemplate(extension)
           silent! :execute '0r $VIMHOME/templates/'. a:extension. '.tpl'
          silent! execute 'source $VIMHOME/templates/'.a:extension.'.patterns.tpl'
    endfunction

    autocmd BufNewFile * silent! call LoadTemplate('%:e')
" }
   
    

" Load plugin
if filereadable(expand("~/.vim/.vimrc.plugin"))
    source ~/.vim/.vimrc.plugin
endif

" Load test
if filereadable(expand("~/.vim/.vimrc.test"))
    source ~/.vim/.vimrc.test
endif

" vim learn file
" * http://learnvimscriptthehardway.onefloweroneworld.com/chapters/43.html
