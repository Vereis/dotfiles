set statusline=
set statusline+=%#Search#
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
