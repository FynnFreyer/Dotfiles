set autoindent
set backspace=indent,eol,start
set backup
set history=50
set incsearch
set ruler
set showcmd

map Q gq

vnoremap _g y:exe "grep /" . escape(@", '\\/') . "/ *.c *.h"<CR>

syntax on
set hlsearch

filetype plugin indent on



let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
Plug 'zchee/deoplete-jedi'
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
map , :Files<CR>

Plug 'scrooloose/nerdtree'
map ; :NERDTree<CR>

Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'

Plug 'sbdchd/neoformat'
" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

Plug 'w0rp/ale'
let b:ale_linters = ['pylint']

Plug 'airblade/vim-gitgutter'

call plug#end()
