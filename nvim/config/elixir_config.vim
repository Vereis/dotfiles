function! LoadElixirSettings()
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set textwidth=80
  set expandtab
  set autoindent
  set fileformat=unix
endfunction

au BufNewFile,BufRead *.ex,*.exs,*.eex call LoadElixirSettings()

" Only display silent error in message bar
let g:mix_format_silent_errors = 1

" Mix format on save
let g:mix_format_on_save = 1

" Don't use alchemist.vim's ctag like functionality as I'm using ctags
let g:alchemist_tag_disable = 1
