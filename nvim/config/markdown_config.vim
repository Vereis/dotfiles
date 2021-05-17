function! LoadMarkdownSettings()
  let g:md_textwidth=80
  let &textwidth=g:md_textwidth

  set colorcolumn=+1

  set tabstop=2
  set softtabstop=2
  set shiftwidth=2

  set expandtab
  set autoindent

  set fileformat=unix

  " Disable automatic line breaking
  set formatoptions-=t
endfunction

au BufNewFile,BufRead *.md call LoadMarkdownSettings()
