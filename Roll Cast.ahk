#Persistent
#SingleInstance Force

settingsFile := A_ScriptDir "\\rollcast_settings.ini"

keysList := "1,2,3,4,5,6,7,8,9,0"

; Load saved settings
Loop, Parse, keysList, `,
{
    key := A_LoopField
    IniRead, value, %settingsFile%, Keys, %key%, 0
    selected%key% := value
}

; Create GUI
Gui, +AlwaysOnTop +Resize
Loop, Parse, keysList, `,
{
    key := A_LoopField
    checked := (selected%key% = 1) ? "Checked" : ""
    Gui, Add, Checkbox, vCheck%key% %checked%, Key %key%
}
Gui, Add, Button, gEnableAll, Enable All
Gui, Add, Button, gDisableAll, Disable All
Gui, Add, Button, gSaveSettings, Save
Gui, Add, Button, gCloseGUI, Close
return

F10::Gui, Show, , Roll Cast Settings
return

EnableAll:
Loop, Parse, keysList, `,
{
    key := A_LoopField
    GuiControl,, Check%key%, 1
    selected%key% := 1
    IniWrite, 1, %settingsFile%, Keys, %key%
}
return

DisableAll:
Loop, Parse, keysList, `,
{
    key := A_LoopField
    GuiControl,, Check%key%, 0
    selected%key% := 0
    IniWrite, 0, %settingsFile%, Keys, %key%
}
return

SaveSettings:
Loop, Parse, keysList, `,
{
    key := A_LoopField
    GuiControlGet, state,, Check%key%
    selected%key% := state
    IniWrite, %state%, %settingsFile%, Keys, %key%
}
return

CloseGUI:
Gui, Hide
return

; Create static hotkeys for all keys
~1::GoSub, DoRollCast1
~2::GoSub, DoRollCast2
~3::GoSub, DoRollCast3
~4::GoSub, DoRollCast4
~5::GoSub, DoRollCast5
~6::GoSub, DoRollCast6
~7::GoSub, DoRollCast7
~8::GoSub, DoRollCast8
~9::GoSub, DoRollCast9
~0::GoSub, DoRollCast0
return

DoRollCast1:
    if (selected1 = 1)
        GoSub, PerformRollCast
return
DoRollCast2:
    if (selected2 = 1)
        GoSub, PerformRollCast
return
DoRollCast3:
    if (selected3 = 1)
        GoSub, PerformRollCast
return
DoRollCast4:
    if (selected4 = 1)
        GoSub, PerformRollCast
return
DoRollCast5:
    if (selected5 = 1)
        GoSub, PerformRollCast
return
DoRollCast6:
    if (selected6 = 1)
        GoSub, PerformRollCast
return
DoRollCast7:
    if (selected7 = 1)
        GoSub, PerformRollCast
return
DoRollCast8:
    if (selected8 = 1)
        GoSub, PerformRollCast
return
DoRollCast9:
    if (selected9 = 1)
        GoSub, PerformRollCast
return
DoRollCast0:
    if (selected0 = 1)
        GoSub, PerformRollCast
return

PerformRollCast:
    Critical
    SetKeyDelay, 10, 10
    StringTrimLeft, keyPressed, A_ThisHotkey, 1
    SendInput, %keyPressed%
    Sleep, 30
    SendInput, {w down}
    Sleep, 20
    SendInput, q
    Sleep, 20
    SendInput, {w up}
return
; Macro made by Gold(raphaelcsc911) on youtube 
