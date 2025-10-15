SetKeyDelay, -1
SetMouseDelay, -1
SetBatchLines, -1

2::
    keyPressed := A_ThisHotkey
    ; If A_ThisHotkey has a $, remove it
    if SubStr(keyPressed,1,1) = "$"
        keyPressed := SubStr(keyPressed,2)
    
    Send, {%keyPressed% up}
    Sleep, 3
    SendInput, %keyPressed%
    Sleep, 0
    SendInput, f
return
; Made by Gold raphaelcsc911
