set nocompatible              " be iMproved
filetype off                  " required by Vundle

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/Vundle.vim

" Vundle-managed plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle

Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
Plugin 'hallison/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
call vundle#end()

filetype plugin indent on     " required by Vundle

syntax enable
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized
set t_Co=256

:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autoindent
:set guifont=Monospace\ 8
au FileType json command -range=% -nargs=* Tidy <line1>,<line2>! json_xs -f json -t json-pretty
