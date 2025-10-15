F9::
toggle := !toggle
ToolTip % (toggle ? "Macro: M1M1M1" : "off")
SetTimer, TooltipOff, 1500
return

TooltipOff:
SetTimer, TooltipOff, Off
ToolTip
return

#If WinActive("Roblox") && toggle
LButton::
SetMouseDelay, 10 
Loop
{
    Click
    Sleep, 10 
    If !GetKeyState("LButton", "P")
        Break
}
return
; Made By GoldYt
