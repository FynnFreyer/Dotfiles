" NAVIGATION
" Allow mouse control
set mouse+=a
" Set min distance (rows) between cursor and screen edge
set scrolloff=2
" Go past/before eol with arrow keys
set whichwrap+=<,>,[,]
" Delete past eol with backspace
set backspace=indent,eol,start

" Scroll with <C-Up>/<C-Down>
noremap <C-Up> <C-y><Up>
noremap <C-Down> <C-e><Down>
" Make <PageUp>/<PageDown> only smooth scroll three quarters of a page
"noremap <expr> <PageUp> repeat("\<C-y> :sleep 1m<CR>", winheight('%')/2)
"noremap <expr> <PageDown> repeat("\<C-e> :sleep 1m<CR>", winheight('%')/2)

" Jump to first/last/middle/last edited line with 
" <M-Up>/<M-Down>/<M-Left>/<M-Right>
nnoremap <M-Up> H
inoremap <M-Up> <C-o>H
nnoremap <M-Down> L
inoremap <M-Down> <C-o>L
nnoremap <M-Left> M
inoremap <M-Left> <C-o>M
nnoremap <M-Right> g;
inoremap <M-Right> <C-o>g;


" FILE/BUFFER ACTIONS
" Write file on .
nnoremap ww :w<CR>
" Write and close file on ..
nnoremap wq :x<CR>
" Close file/vim on qq/QQ
nnoremap qq :q<CR>
nnoremap qQ :q!<CR>
nnoremap QQ :qa!<CR>
" Open quick search on ,,
nnoremap ,, :Files<CR>
" Toggle window switching with ;
nnoremap ; <C-W>
"map ; :NERDTree<CR>

" Open splits to the bottom/right by default
set splitbelow
set splitright
" Split help to the top
autocmd FileType help wincmd K

" Open terminal on bottom with 10% height on <leader>t
nnoremap <leader>t :split <bar> resize 10 <bar> terminal<CR>i
" Add mappings for python3, xonsh, java and haskell
nnoremap <leader>tp :split <bar> resize 10 <bar> terminal python3<CR>i
nnoremap <leader>tx :split <bar> resize 10 <bar> terminal xonsh<CR>i
nnoremap <leader>tj :split <bar> resize 10 <bar> terminal jshell<CR>i
nnoremap <leader>th :split <bar> resize 10 <bar> terminal ghci<CR>i

" enable <Esc> in terminal mode
tnoremap <Esc> <C-\><C-N>
" Automatically change to directory of current file
set autochdir

