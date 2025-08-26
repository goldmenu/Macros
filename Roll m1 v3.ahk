F5::
    toggle := !toggle  ; Toggle the macro on/off
    tooltip % (toggle ? "Macro: Rollm1" : "Norollm1")
    SetTimer, TooltipOff, 1500  ; Hide the tooltip after 1.5 seconds
Return

TooltipOff:
    SetTimer, TooltipOff, Off  ; Disable the timer for hiding tooltip
    Tooltip  ; Hide the tooltip
Return

~LButton::
    if (!toggle)  ; Don't execute if the macro is off
        Return

    if !GetKeyState("W", "P")  ; Check if 'W' is NOT physically pressed
        Return

    Click  
    Sleep, 20  
    SendInput, {q}  
Return
