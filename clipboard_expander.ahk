;Insert Date script
;	This script inserts the date in various preferred formats

;**Script settings**
#NoEnv 
ListLines Off
SendMode Input 
;-------------------------------------------------

global clip0, clip1, clip0, clip3, clip4, clip5, clip6, clip7, clip8, clip9
global ibtitle := "Clipboard Expander 1.3.4"
global ibprompt := "Enter clipboard data."

MsgBox ,0, Welcome to %ibtitle%, Welcome to the Clipboard Expander tool. Instructions: Hold any number pad button (0-9) while pressing "c" to initiate the copy dialogue for that number. Input the text to be copied to the expanded clipboard into the dialogue box and click "OK" or press "ENTER." Hold the number while pressing "v" to paste the previously copied text for that number. The Clipboard can hold one clip per number pad key (0-9), each of which can be recalled at any time using the paste command (number pad + v). Each clip can be overwritten by re-initiating the copy dialogue for that number (number pad + c).

copyfunction(ByRef clipn, temp, clipnum)
{
temp := clipn
InputBox, clipn, %ibtitle%, %ibprompt% Clip %clipnum%
if ErrorLevel
    clipn := temp
clip%clipnum% := clipn
	;return clipn
}

numpad0 & c::
copyfunction(byRef clip%clipnum%, temp, clipnum := 0)
Return

numpad1 & c::copyfunction(byRef clip%clipnum%, temp, clipnum := 1)


numpad2 & c::

clip%clipnum% := copyfunction(byRef clip%clipnum%, temp, clipnum)
Return

numpad3 & c::
clip3 := copyfunction(byRef clip3, temp, clipnum)
Return

numpad4 & c::
clip4 := copyfunction(byRef clip4, temp, clipnum)
Return

numpad5 & c::
clip5 := copyfunction(byRef clip5, temp, clipnum)
Return

numpad6 & c::
clip6 := copyfunction(byRef clip6, temp, clipnum)
Return

numpad7 & c::
clip7 := copyfunction(byRef clip7, temp, clipnum)
Return

numpad8 & c::
clip8 := copyfunction(byRef clip8, temp, clipnum)
Return

numpad9 & c::
clip9 := copyfunction(byRef clip9, temp, clipnum)
Return

numpad0 & v::
Send %clip0%
Return

numpad1 & v::
Send %clip1%
Return

numpad2 & v::
Send %clip2%
Return

numpad3 & v::
Send %clip3%
Return

numpad4 & v::
Send %clip4%
Return

numpad5 & v::
Send %clip5%
Return

numpad6 & v::
Send %clip6%
Return

numpad7 & v::
Send %clip7%
Return

numpad8 & v::
Send %clip8%
Return

numpad9 & v::
Send %clip9%
Return

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
