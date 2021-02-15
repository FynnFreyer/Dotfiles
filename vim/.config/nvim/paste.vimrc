" Map pastetoggle to F2 for disabling autoindent on pasting pre indented code
set pastetoggle=<F2>

" Use system clipboard
set clipboard=unnamedplus
set clipboard+=unnamed

" Remap cut/copy/paste to "standard" shortcuts
vnoremap <C-x> "+x
vnoremap <C-c> "+y
inoremap <C-v> <C-o>"+gP
nnoremap <C-v> "+gP
tnoremap <C-v> <C-\><C-N>"+gPi
