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
	::eml.kw::Kristina,{enter 2}
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
::rbz.na::Robert B. Zumwalt
::rbz.nu::Robert B. Zumwalt - {#} 247080
::ksc.na::Kahn, Soares & Conway, LLP
::ksc.af1::Kahn, Soares & Conway, LLP{enter}219 N. Douty St.{enter}Hanford, CA 93230
::ksc.af2::219 N. Douty St.{enter}Hanford, CA 93230
::ksc.af3::219 N. Douty St.{enter}Hanford, California 93230
::ksc.af4::219 N. Douty St., Hanford, California 93230
::ksc.af5::219 N. Douty St., Hanford, CA 93230

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

::pdf.h4p2::Robert B. Zumwalt - {#}247080{tab}Kahn, Soares & Conway, LLP{tab}219 N. Douty St.{tab}Hanford, CA 93230{tab}(559) 584-3337{tab}(559) 584-3348
::pdf.h5p2::Robert B. Zumwalt - {#}247080{tab}Kahn, Soares & Conway, LLP{tab}219 N. Douty St.{tab}Hanford, CA 93230{tab 2}(559) 584-3337{tab}(559) 584-3348
::pdf.h3p2::Robert B. Zumwalt - {#}247080{tab}Kahn, Soares & Conway, LLP{tab}219 N. Douty St., Hanford, CA 93230{tab}(559) 584-3337{tab}(559) 584-3348
::pdf.h2p2::Robert B. Zumwalt - {#}247080`; Kahn, Soares & Conway, LLP{tab}219 N. Douty St., Hanford, CA 93230{tab}(559) 584-3337{tab}(559) 584-3348
::pdf.h4p1::Robert B. Zumwalt - {#}247080{tab}Kahn, Soares & Conway, LLP{tab}219 N. Douty St.{tab}Hanford, CA 93230{tab}(559) 584-3337
::pdf.h3p1::Robert B. Zumwalt - {#}247080{tab}Kahn, Soares & Conway, LLP{tab}219 N. Douty St., Hanford, CA 93230{tab}(559) 584-3337
::pdf.h2p1::Robert B. Zumwalt - {#}247080`; Kahn, Soares & Conway, LLP{tab}219 N. Douty St., Hanford, CA 93230{tab}(559) 584-3337
::pdf.h4p0::Robert B. Zumwalt - {#}247080{tab}Kahn, Soares & Conway, LLP{tab}219 N. Douty St.{tab}Hanford, CA 93230
::pdf.h3p0::Robert B. Zumwalt - {#}247080{tab}Kahn, Soares & Conway, LLP{tab}219 N. Douty St., Hanford, CA 93230
::pdf.h2p0::Robert B. Zumwalt - {#}247080`; Kahn, Soares & Conway, LLP{tab}219 N. Douty St., Hanford, CA 93230
::pdf.p2::(559) 584-3337{tab}(559) 584-3348
::pdf.p1::(559) 584-3337
::pdf.f1::(559) 584-3348


;Gosub, putDate

putDate:
FormatTime, CurrentDateTime,, MMMM d, yyyy
Send %CurrentDateTime%
return



