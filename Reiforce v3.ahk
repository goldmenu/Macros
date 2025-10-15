SetKeyDelay, -1
SetMouseDelay, -1
SetBatchLines, -1

$1::
    keyPressed := SubStr(A_ThisHotkey, 2)  ; "1"
    Send, {%keyPressed% up}
    Sleep, 3
    SendInput, %keyPressed%
    Sleep, 0
    SendInput, f
return
; Made by Gold raphaelcsc911
