" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1
" Enable trimming of trailing whitespace
let g:neoformat_basic_format_trim = 1

nnoremap <Leader>f :Neoformat<CR>
inoremap <Leader>f <C-o>:Neoformat<CR>
