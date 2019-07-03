function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#Search#
set statusline+=%{StatuslineGit()}
set statusline+=%#PmenuSel#
set statusline+=\ %t%m\ 
set statusline+=%#Conceal#
set statusline+=\ [%{&fileformat}]\ 
set statusline+=%#CursorColumn#
set statusline+=%=
set statusline+=%#Conceal#
set statusline+=\ %p%%\ 
set statusline+=%#PmenuSel#
set statusline+=\ Saved:\ %{strftime('%R',getftime(expand('%')))}\ 
set statusline+=%#Search#
set statusline+=\ [%{&fileencoding?&fileencoding:&encoding}]
set statusline+=\ %y\ 
