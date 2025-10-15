SetKeyDelay, -1
SetMouseDelay, -1
SetBatchLines, -1


2::
    keyPressed := A_ThisHotkey 
    
    Hotkey, %A_ThisHotkey%, Off

    SendInput, %keyPressed%
    Sleep, 3

    SendInput, {f down}
    Sleep, 6
    SendInput, {f up}


    Hotkey, %A_ThisHotkey%, On
return

; Made by Gold raphaelcsc911
