;made by Nizo
; THIS FILE HAS TO BE UTF-8-BOM OR UTF-16! OTHERWISE, AHK WILL NOT RECOGNIZE UMLAUTS!

#SingleInstance force
;SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff

#If, GetKeyState("CapsLock", "P")
	Tab::
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "AlwaysOff" : "AlwaysOn"
		return

	.::WheelDown
	p::WheelUp
	;f::
	;	Send, {Ctrl Down}{BackSpace}{Ctrl Up}
	;	return
	g::Home
	c::
		Send, {Ctrl Down}{Left}{Ctrl Up}
		return
	r::
		Send, {Ctrl Down}{Right}{Ctrl Up}
		return
	l::End
	?::
	;	Send, {Ctrl Down}{}{Ctrl Up}
	;	return

	a::Esc
	o::Media_Prev
	e::Media_Play_Pause
	u::Media_Next

	d::BackSpace
	h::Left
	t::Down
	n::Up
	s::Right
	ß::Del

	b::Enter
	m::Volume_Mute
	w::Volume_Down
	v::Volume_Up
	z::PgUp
	RShift::PgDn
#If
