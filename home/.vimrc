set nocompatible              " be iMproved
filetype off                  " required by Vundle

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/vundle

" Vundle-managed plugins
call vundle#begin()
Plugin 'gmarik/vundle'        " let Vundle manage Vundle
Plugin 'elzr/vim-json'
call vundle#end()

filetype plugin indent on     " required by Vundle

:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autoindent
:set guifont=Monospace\ 8
au FileType json command -range=% -nargs=* Tidy <line1>,<line2>! json_xs -f json -t json-pretty
