" Disable jedi autocompletion, because we use deoplete
let g:jedi#completions_enabled = 0
" Enable deoplete
let g:deoplete#enable_at_startup = 1
" Close preview window when done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" Use <Tab> to cycle through suggestions
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

