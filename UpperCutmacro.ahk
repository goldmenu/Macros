setkeydelay, -1
setmousedelay, -1
setbatchlines, -1

$e:: 
    currentKey := SubStr(A_ThisHotkey, 2)  
    send {w up}
    while GetKeyState(currentKey, "P")
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




