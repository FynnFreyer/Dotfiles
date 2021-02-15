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

source $home/.config/nvim/interface.vimrc
source $home/.config/nvim/indent.vimrc
source $home/.config/nvim/paste.vimrc
source $home/.config/nvim/navigation.vimrc
source $home/.config/nvim/color.vimrc
source $home/.config/nvim/format.vimrc
source $home/.config/nvim/lint.vimrc
source $home/.config/nvim/autocomplete.vimrc
source $home/.config/nvim/plugins/nerdtree.vimrc
source $home/.config/nvim/plugins/nerdcommenter.vimrc

