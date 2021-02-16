set encoding=UTF-8
set nocompatible

let mapleader = ","

" Read/write changes on focus change
set autoread
set autowrite
au FocusLost,WinLeave * :silent! wa
au FocusGained,BufEnter * :silent! !

" Enable syntax highlighting
syntax on

" Show line numbers and row:col ruler on bottom of view port
set ruler
set number

" Show unfinished commands and set history size
set showcmd
set history=50

" Human friendly command completion and searching
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

