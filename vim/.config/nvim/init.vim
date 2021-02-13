call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'tpope/vim-surround'

call plug#end()

set encoding=UTF-8

set autoread
set autowrite

" Write file on .
map . :w<CR>
" Write and close file on ..
map .. :x<CR>
" Close file on qq
map qq :qa!<CR>
" Open quick search on ,
map , :Files<CR>
" Toggle window switching with ;
nnoremap ; <C-W>
"map ; :NERDTree<CR>

nnoremap <leader>t :terminal<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
let NERDTreeShowHidden=1

" Use system clipboard
set clipboard=unnamedplus
set clipboard+=unnamed

" Remap cut/copy/paste to "standard" shortcuts
vnoremap <C-x> "+x
vnoremap <C-c> "+y
inoremap <C-v> <C-R><C-R>+
nnoremap <C-v> "+gP


" Show command history
set showcmd
set history=50

" Show line numbers and row:col ruler
set ruler
set number

" Allow mouse control
set mouse+=a
" Set min distance (rows) between cursor and screen edge to 1
set scrolloff=1

set whichwrap+=<,>,[,]

map Q gq
vnoremap _g y:exe "grep /" . escape(@", '\\/') . "/ *.c *.h"<CR>

set autoindent
set backspace=indent,eol,start

" human friendly command completion
set ignorecase
set hlsearch
set incsearch
set showmatch

" enable syntax highlighting
syntax on
filetype plugin indent on

" set colorscheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:lightline = {'colorscheme': 'solarized_dark'}

let g:python3_host_prog = '/usr/bin/python3'

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
" use deoplete
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
" Enable linting
let b:ale_linters = ['pylint']

