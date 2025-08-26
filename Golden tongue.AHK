setkeydelay, -1
setmousedelay, -1
setbatchlines, -1

cooldown = 2000
universaldelay = 2
senddelay = 25
text = Sub to Gold      

8::
sleep %universaldelay%
send {/ down}
sleep %universaldelay%
send {/ up}
sleep %universaldelay%
send %text%
sleep %senddelay%
send {enter down}
sleep %universaldelay%
send {enter up}
hotkey, 8, off
sleep %cooldown%
hotkey, 8, on
return