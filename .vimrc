" Load vundle {{{
if filereadable(expand("~/.vim/.vimrc.vundle"))
    source ~/.vim/.vimrc.vundle
endif
" }}}

" Basic setting  {{{
    set tabstop=4 softtabstop=4 expandtab shiftwidth=4
    set nocompatible
    set backspace=indent,eol,start
    let mapleader=","
    syntax enable
    au BufNewFile,BufRead *.swift set filetype=swift
    set clipboard=unnamed
    set laststatus=2
    set incsearch
    set foldmethod=marker

    
    " load template
    function! LoadTemplate(extension)
           silent! :execute '0r $VIMHOME/templates/'. a:extension. '.tpl'
          silent! execute 'source $VIMHOME/templates/'.a:extension.'.patterns.tpl'
    endfunction

    augroup load_template
        autocmd!
        autocmd BufNewFile * silent! call LoadTemplate('%:e')
    augroup end

    augroup common
        autocmd BufRead *.vimrc.* set filetype=vim
    augroup end
" }}}

" Load other vim source {{{
    " load abbreviations
    if filereadable(expand("~/.vim/.vimrc.abbr"))
        source ~/.vim/.vimrc.abbr
    endif
       
    " load map
    if filereadable(expand("~/.vim/.vimrc.map"))
        source ~/.vim/.vimrc.map
    endif

    " load test
    if filereadable(expand("~/.vim/.vimrc.test"))
        source ~/.vim/.vimrc.test
    endif
"}}}

" UI
" {
    " Status bar

" }

" vim learn file
" * http://learnvimscriptthehardway.onefloweroneworld.com/chapters/43.html
