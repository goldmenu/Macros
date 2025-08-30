macroEnabled := true

F1::
    macroEnabled := !macroEnabled
    ToolTip, % macroEnabled ? "Macro Enabled" : "Macro Disabled"
    SetTimer, RemoveToolTip, -1000
return

RemoveToolTip:
    ToolTip
return

$q::
    SendInput, {q}   ; Always send q no matter what

    if (macroEnabled) {
        Sleep, 120
        Click, right
    }
return
; Made by Gold raphaelcsc911
