;Insert Date script
;	This script inserts the date in various preferred formats

;**Script settings**
#NoEnv 
ListLines Off
SendMode Input 
;-------------------------------------------------

; Gobal variables
global clip0, clip1, clip0, clip3, clip4, clip5, clip6, clip7, clip8, clip9
global ibtitle := "Clipboard Expander 1.3.5"
global ibprompt := "Enter clipboard data."

; Start screen and instructions
MsgBox ,0, Welcome to %ibtitle%, Welcome to the Clipboard Expander tool. Instructions: Hold any number pad button (0-9) while pressing "c" to initiate the copy dialogue for that number. Input the text to be copied to the expanded clipboard into the dialogue box and click "OK" or press "ENTER." Hold the number while pressing "v" to paste the previously copied text for that number. The Clipboard can hold one clip per number pad key (0-9), each of which can be recalled at any time using the paste command (number pad + v). Each clip can be overwritten by re-initiating the copy dialogue for that number (number pad + c).

; Main function
copyfunction(ByRef clipn, temp, clipnum)
{
InputBox, clipn, %ibtitle%, %ibprompt% Clip %clipnum%
if ErrorLevel
    clipn := temp
return clipn
}

; Copy dialogue initiation hotkeys 
numpad0 & c::
clipnum := 0
temp := clip%clipnum%
clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

numpad1 & c::
clipnum := 1
temp := clip%clipnum%
clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

numpad2 & c::
clipnum := 2
temp := clip%clipnum%
clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

numpad3 & c::
clipnum := 3
temp := clip%clipnum%
clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

numpad4 & c::
clipnum := 4
temp := clip%clipnum%
clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

numpad5 & c::
clipnum := 5
temp := clip%clipnum%
clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

numpad6 & c::
clipnum := 6
temp := clip%clipnum%
clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

numpad7 & c::
clipnum := 7
temp := clip%clipnum%
clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

numpad8 & c::
clipnum := 8
temp := clip%clipnum%
clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

numpad9 & c::
clipnum := 9
temp := clip%clipnum%
clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

; Paste dialogue initiation hotkeys 
numpad0 & v::Send %clip0%
numpad1 & v::Send %clip1%
numpad2 & v::Send %clip2%
numpad3 & v::Send %clip3%
numpad4 & v::Send %clip4%
numpad5 & v::Send %clip5%
numpad6 & v::Send %clip6%
numpad7 & v::Send %clip7%
numpad8 & v::Send %clip8%
numpad9 & v::Send %clip9%

; Re-initializes the number pad keys. Without these commands the number keys won't work except ot call the copy and paste dialogues.
numpad0::Send {numpad0}
numpad1::Send {numpad1}
numpad2::Send {numpad2}
numpad3::Send {numpad3}
numpad4::Send {numpad4}
numpad5::Send {numpad5}
numpad6::Send {numpad6}
numpad7::Send {numpad7}
numpad8::Send {numpad8}
numpad9::Send {numpad9}
