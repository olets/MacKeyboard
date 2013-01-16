; A Mac mapping for the Dell Mini 10v keyboard
; Changes the behavior of the Alt, Windows, and Contextual Menu keys
; Adds behaviors to one of the Ctrl keys
; Developed and tested only in Windows 7 on a Dell 1011 (Mini 10v)
;
; USE: This is an AutoHotKey script (.ahk), which needs AutoHotKey to run. I recommend
; adding MacKeyboard to the Startup items.
;
; NOTE: I mouse/trackpad with my right hand, and use the left-hand Ctrl key
; for right clicking. If you want to use the right-hand Ctrl key for right clicking
; you'll need to swap all LCtrl's and RCtrl's.
;
; LIMITATIONS:
; - Alt-Tab (Mac "Command-Tab") is now mapped to Windows-Tab and Contextual Menu-Tab
;   (shouldn't be an issue for small keyboards, where the Windows and Contextual Menu
;   buttons are close to the thumbs, and Alt is narrow)
; - Left and right arrow keys escape (Shift-)Alt-Tab instead of changing the selection.
;   (see end of file for my latest attempt)

#Singleinstance force
SendMode Input

; Alt keys act as Ctrl keys (Mac "Command"-ish)
	LAlt::RCtrl
	RAlt::RCtrl

; Windows and Contextual Menu keys act as Alt keys,
; and are used with Tab for the open windows' selector (Win "Alt-Tab"/Mac "Command-Tab")
; and with ` to go backwards through the open window's selector (Win "Shift Alt-Tab", Mac "Command-`")
	AppsKey::Alt
	AppsKey & Tab::AltTab
	AppsKey & `::ShiftAltTab
	;LWin::Alt		; comment out if you need a Start Menu key
	LWin & Tab::AltTab	; comment out if you need Win+Tab to be Aero Flip 3D
	Lwin & `::ShiftAltTab	; comment out if you need Aero Flip 3D

; The *left* Ctrl button + left click = right click (Mac "Control click")
	<^LButton::RButton

; Windows + left/right arrows and Contextual Menu + left/right arrow do Ctrl + left/right
;	(Mac "Option + left/right"-ish).
; *Left* Ctrl + left/right arrows do Home/End (Mac "Command + left/right"-ish).
; *Left* Ctrl + up/down arrows do Ctrl Home/End (Mac "Command + up/down"-ish).
;
; NOTE:
; - You can modify these with Shift.
; - If you need Alt instead of LCtrl you'll have to comment out the Alt::Ctrl mappings, at top.
LWin & Left::
	if GetKeyState("Shift")	
		{
		Send +^{Left}
		return
		}
	else
		{	
		Send ^{Left}
		return
		}
AppsKey & Left::
	if GetKeyState("Shift")	
		{
		Send +^{Left}
		return
		}
	else
		{
		Send ^{Left}
		return
		}
LWin & Right::
	if GetKeyState("Shift")	
		{
		Send +^{Right}
		return
		}
	else
		{	
		Send ^{Right}
		return
		}
AppsKey & Right::
	if GetKeyState("Shift")	
		{
		Send +^{Right}
		return
		}
	else
		{
		Send ^{Right}
		return
		}

<^Right::
	if GetKeyState("Shift")
		{
		Send +{End}
		return
		}
	else
		{
		Send {End}
		return
		}
LCtrl & Left::
	if GetKeyState("Shift")
		{
		Send +{Home}
		return
		}
	else
		{
		Send {Home}
		return
		}
LCtrl & Up::
	if GetKeyState("Shift")	; commented out because it doesn't work
		{
		Send +^{Home}
		return
		}
	else
		{
		Send ^{Home}
		return
		}
LCtrl & Down::
	if GetKeyState("Shift")	; commented out because it doesn't work
		{
		Send +^{End}
		return
		}
	else
		{
		Send ^{End}
		return
		}

;~*Left:: ; from the AHK Help... hoped it would restore Left/Right in Alt-Tab, but no
;IfWinExist ahk_class #32771
;Send {Alt down}{tab}
;return