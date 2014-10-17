set nocompatible              " be iMproved
filetype off                  " required by Vundle

if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
    !git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/vundle

" Vundle-managed plugins
call vundle#begin()
Plugin 'gmarik/vundle'        " let Vundle manage Vundle

Plugin 'altercation/vim-colors-solarized'
Plugin 'elzr/vim-json'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

filetype plugin indent on     " required by Vundle

syntax enable
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized

:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autoindent
:set guifont=Monospace\ 8
au FileType json command -range=% -nargs=* Tidy <line1>,<line2>! json_xs -f json -t json-pretty
