setkeydelay, -1
setmousedelay, -1
setbatchlines, -1

loopKey := "e"  

$e::
    send {w up}
    while GetKeyState(loopKey, "P")
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
return

;Made by gold ofc

