/***STARTUP SCRIPTS***

Save in:  C:\Users\bzumwalt\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

*/
#NoEnv
ListLines Off
SendMode Input  

/*========================
Email Hotkeys
*/

#Hotstring *

IfWinActive, ahk_class rctrl_renwnd32
{
	::eml.kw::k,{enter 2}
	::eml.qq::Let me know if you have any questions. Thank you.
}

/*========================
Computing Hotkeys
*/
IFWinActive, ahk_class CabinetWClass
{
	::d..2::
		FormatTime, CurrentDateTime,, yyyy-MM-dd
		Send %CurrentDateTime%
		return
}

IFWinActive, ahk_class OpusApp
{
	
	:r0:l.que::If you have any questions regarding the enclosed petition, please do not hesitate to contact me. Thank you for your continuing confidence in this firm.
	::d..1::
		Gosub, putDate
		return
}

/*========================
General Hotkeys
*/

#IFWinActive
::rbz.na::rbz
::rbz.nu::rbz - {#} nnnnnn
::ksc.na::ksc
::ksc.af1::kscaddress1
::ksc.af2::address2
::ksc.af3::address3

/*========================
Letter Hotkeys
*/

::ltr.close1::If you have any questions or concerns with regard to any of the foregoing, please feel free to contact me at any time. Thank you for your continuing confidence in this firm.
::ltr.close2::If you have any questions with respect to any of the foregoing, you can contact my assistant, Kristina Williams, or me.  Thank you for your attention to this matter, and I look forward to receiving your response soon.
::ltr.close3::Thank you for your assistance in this matter.
::ltr.encl1::Please find the enclosed _______________. Please review the same and, if satisfactory, sign and return it to me at your earliest convenience. 
::ltr.encl2::Enclosed for your records are the following documents in connection with the above-referenced matter:{enter}{tab}

/*========================
PDF Hotkeys
*/



;Gosub, putDate

putDate:
FormatTime, CurrentDateTime,, MMMM d, yyyy
Send %CurrentDateTime%
return



