setkeydelay, -1
setmousedelay, -1
setbatchlines, -1

$e::
send {w up}
while GetKeyState("e", "P")
{
    send {rbutton down}
    sleep 1
    send {rbutton up}
    sleep 1
    send {ctrl down}
    sleep 1
    send {lbutton down}
    sleep 1
    send {lbutton up}
    send {ctrl up}
    sleep 1
}
 Send, {w down}
 sleep, 5
 send, q
 Send, {w up}
return
; Made by Gold (raphaelcsc911) make sure to sub 