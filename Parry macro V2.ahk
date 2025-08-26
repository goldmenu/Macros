$f::
    SendInput {Blind}f  
    Click, right        
    KeyWait, f, T0.035   
    if GetKeyState("f", "P") {
        ; Key is still held — hold it down now
        SendInput {Blind}{f down}
        KeyWait, f
        SendInput {Blind}{f up}
    }
return


;This Macro Was made by Reddice with the help of Gold