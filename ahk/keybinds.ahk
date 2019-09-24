; Caps -> Win
Capslock::LWin

; Win+F -> Launch Firefox
#f::
  Run, firefox.exe
  return

; Win+T -> Launch Windows Terminal
#t::
  Run, wt.exe
  return

; Win+A -> Gets the active window name
#a::
    WinGet, Active_ID, ID, A
    WinGet, Active_Process, ProcessName, ahk_id %Active_ID%
    MsgBox, Running %Active_Process%
