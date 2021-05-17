function! LoadElixirSettings()
  let g:ex_textwidth=80
  let &textwidth=g:ex_textwidth

  set colorcolumn=+1

  set tabstop=2
  set softtabstop=2
  set shiftwidth=2

  set expandtab
  set autoindent

  set fileformat=unix
endfunction

let g:mix_format_on_save = 1

au BufNewFile,BufRead *.ex,*.exs,*.eex call LoadElixirSettings()
