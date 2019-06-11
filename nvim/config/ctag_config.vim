" Ctags
set tags=./.tags;/
nnoremap <C-Space><Return> <C-]>
nnoremap <C-Space><BS> <C-t>
nnoremap <C-Space><C-Space> :silent !ctags -f .tags -R .<return><return><C-l>
nnoremap <C-m> :TagbarToggle<CR>

" Elixir Tagbar
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:tests'
    \ ]
\ }

" Autocompletion
let g:deoplete#enable_at_startup = 1
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Ignore these filetypes
set wildignore+=*.pdf,*.o,*.obj,*.bin,*.jpg,*.png,*.beam
