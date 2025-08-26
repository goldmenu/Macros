; Toggleable Q macro with F5
#Persistent
toggle := false ; Initial state of the toggle (off)
return

; F5 toggles the macro on or off
F5::
toggle := !toggle ; Flip the toggle state
if (toggle) {
    Tooltip, Macro is ON
} else {
    Tooltip, Macro is OFF
}
SetTimer, RemoveTooltip, -1000 ; Remove the tooltip after 1 second
return

~^LButton::
if (toggle) {
    Sleep, 100 ; Wait for 100 milliseconds (0.1 seconds)
    Send, q
}
return

RemoveTooltip:
Tooltip
return
; Made by Gold (raphaelcsc911) make sure to sub 