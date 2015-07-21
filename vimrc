set nocompatible              " be iMproved, required
filetype off                  " required
                                                                                             
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kelwin/vim-smali'
Plugin 'vimcdoc'
Plugin 'taglist.vim'
Plugin 'Auto-Pairs'
Plugin 'file:///$HOME/.vim/bundle/tonghu/'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'groenewege/vim-less'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'BtPht/python_editing'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" self config
syntax on

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set helplang=cn

set clipboard=unnamed

set incsearch

autocmd BufNewFile  *.c      0r ~/.vim/bundle/tonghu/skeleton.c
autocmd BufNewFile  *.php      0r ~/.vim/bundle/tonghu/skeleton.php

" disable auto-pair when edit a smali file
" autocmd BufNewFile,BufRead *.smali let g:AutoPairs="{}"

" set tab = 4 place
" tabstop shiftwidth expandtab softtabstop
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

filetype on

" tonghu's change for test and so on
if !empty(glob("~/.vim/vimrc_th"))
    source ~/.vim/vimrc_th
endif

