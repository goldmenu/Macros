SetKeyDelay, -1
SetMouseDelay, -1
SetBatchLines, -1

e:: 
    currentKey := A_ThisHotkey  ; No SubStr needed unless you use a $
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






