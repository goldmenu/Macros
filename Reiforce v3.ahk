$1::
    keyPressed := SubStr(A_ThisHotkey, 2)
    Send, %keyPressed%
    Sleep, 0
    Send, f
return

; Made by Gold raphaelcsc911
