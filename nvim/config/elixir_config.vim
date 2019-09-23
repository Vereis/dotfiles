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

" Mix format on save
let g:mix_format_on_save = 1
