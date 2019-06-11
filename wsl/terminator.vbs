Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "wsl zsh -c 'DISPLAY=localhost:0 terminator'"
oShell.Run strArgs, 0, false
