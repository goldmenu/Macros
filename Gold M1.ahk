global toggle := false

F9::
toggle := !toggle
ShowCustomTooltip(toggle ? "On" : "Off")
return

ShowCustomTooltip(text) {
    MouseGetPos, xpos, ypos
    xpos += 20  ; offset right
    ypos += 20  ; offset down

    Gui, 99:Destroy
    Gui, 99:+AlwaysOnTop -Caption +ToolWindow +LastFound
    Gui, 99:Color, 000000      
    Gui, 99:Font, cFFD700 s12 Bold, Arial  
    Gui, 99:Add, Text,, %text%
    Gui, 99:Show, NoActivate x%xpos% y%ypos%
    SetTimer, HideTooltip, -1500  
}

HideTooltip:
Gui, 99:Hide
return

#If WinActive("Roblox") && toggle
LButton::
SetMouseDelay, -1   ; no delay between clicks
Loop
{
    Click
    Sleep, 0        ; fastest possible speed
    if !GetKeyState("LButton", "P")
        break
}
return
