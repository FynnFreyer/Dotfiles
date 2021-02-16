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
Plug 'zchee/deoplete-jedi'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'tpope/vim-surround'

call plug#end()

" Set python interpreter location
let g:python3_host_prog = '/usr/bin/python3'

" Define command :SV to (re)source vimrc file
if !exists(":SV")
    let $vimrc=expand("$MYVIMRC")
    command SV source $vimrc
endif
let $home=expand("$HOME")

" Rules for interface and basic behaviour should preferably be loaded first
source $home/.config/nvim/interface.vimrc
" Rules for indentation
source $home/.config/nvim/indent.vimrc
" Fix for 'normal' copy/paste operations
source $home/.config/nvim/paste.vimrc
" Rules and key mappings for navigation and buffer control
source $home/.config/nvim/navigation.vimrc
" Set color scheme
source $home/.config/nvim/color.vimrc
" Rules and key mappings for automated formatting
source $home/.config/nvim/format.vimrc
" Rules and key mappings for linting (pylint via ale)
source $home/.config/nvim/lint.vimrc
" Rules and key mappings for autocompletion (tab nine and jedi via deoplete)
source $home/.config/nvim/autocomplete.vimrc
" Rules and key mappings for nerdtree and nerdcommenter
source $home/.config/nvim/nerdtree.vimrc
source $home/.config/nvim/nerdcommenter.vimrc

