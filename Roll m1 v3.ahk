F5::
    toggle := !toggle  
    tooltip % (toggle ? "Macro: Rollm1" : "Norollm1")
    SetTimer, TooltipOff, 1500 
Return

TooltipOff:
    SetTimer, TooltipOff, Off 
    Tooltip  ; Hide the tooltip
Return

~LButton::
    if (!toggle)  
        Return

    if !GetKeyState("W", "P")
        Return

    Click  
    Sleep, 20  
    SendInput, {q}  
Return
; Made by Gold raphaelcsc911
