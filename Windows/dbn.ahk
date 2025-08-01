;made by Nizo
; THIS FILE HAS TO BE UTF-8-BOM OR UTF-16! OTHERWISE, AHK WILL NOT RECOGNIZE UMLAUTS!

#SingleInstance force
;SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff

; Doesn't work as well as I thought.
;LShift & RShift::
;RShift & LShift::
;	SetCapsLockState % !GetKeyState("CapsLock", "T")
;	return

#ü::Send, {Alt Down}{F4}{Alt Up}

#If, GetKeyState("CapsLock", "P") ; if Caps pressed, apply these modifiers
	Tab:: ; Stolen from Ducky keyboards
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "AlwaysOff" : "AlwaysOn"
		return

	; quite random
	.::WheelDown
	p::WheelUp
	Space::Ctrl

	; Media
	o::Media_Prev
	e::Media_Play_Pause
	u::Media_Next
	m::Volume_Mute
	w::Volume_Down
	v::Volume_Up

	; Vim navigation, but one to the right
	h::Left
	t::Down
	n::Up
	s::Right

	; stuff that makes stuff easier
	g::Home
	l::End
	d::BackSpace
	ß::Del
	b::Enter

	; I don't actually think you need these if you don't have a 60%
	z::PgUp
	RShift::PgDn

	; Copy, paste, and cut made easier
	j:: Send, {Ctrl Down}c{Ctrl Up}
	k:: Send, {Ctrl Down}v{Ctrl Up}
	x:: Send, {Ctrl Down}x{Ctrl Up}
#If

; If you release Caps before space, Ctrl would get stuck. This is a fix.
~CapsLock::
	KeyWait, Capslock
	Send, {Ctrl Up}
	return
