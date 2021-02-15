" Add mapping for toggling comment status and preserve selection in visual mode
imap <F3> <C-o><plug>NERDCommenterToggle
nmap <F3> <plug>NERDCommenterToggle
vmap <F3> <plug>NERDCommenterToggle<CR>gv
"map <F3> <plug>NERDCommenterToggle
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

