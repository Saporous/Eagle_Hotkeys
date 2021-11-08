;^ is Ctrl key
;# is window
;+ is Shift
;! is Alt key

SetTitleMatchMode, 2
GroupAdd, eagle, Schematic
GroupAdd, eagle, Board

Gui, Add, Text,, S - show
Gui, Add, Text,, G - group
Gui, Add, Text,, V - move
Gui, Add, Text,, M - mirror
Gui, Add, Text,, R - rotate
Gui, Add, Text,, C - copy
Gui, Add, Text,, D - delete
Gui, Add, Text,, A - add
Gui, Add, Text,, W - net (wire)
Gui, Add, Text,, B - bus
Gui, Add, Text,, J - junction
Gui, Add, Text,, L - label
Gui, Add, Text,, N - name
Gui, Add, Text,, Alt+V - value
Gui, Add, Text,, Alt+S - split
Gui, Add, Text,, `n
Gui, Add, Text,, Ctrl+Q - Exit program
Gui, Add, Text,, Ctrl+Alt+R - Reload program
Gui, Add, Button, Default, Ok
Gui, Show, w200 h600, 
Return

ButtonOk:
Gui, Hide
Return

#IfWinActive ahk_group eagle
s::
{
SendInput show
Send {Enter}
Return
}

g::
{
SendInput group
Send {Enter}
Return
}

v::
{
SendInput move
Send {Enter}
Return
}

r::
{
SendInput rotate
Send {Enter}
Return
}

c::
{
SendInput copy
Send {Enter}
Return
}

m::
{
SendInput mirror
Send {Enter}
Return
}

d::
{
SendInput delete
Send {Enter}
Return
}

a::
{
SendInput add
Send {Enter}
Return
}

w::
{
SendInput net
Send {Enter}
Return
}

b::
{
SendInput bus
Send {Enter}
Return
}

j::
{
SendInput junction
Send {Enter}
Return
}

l::
{
SendInput label
Send {Enter}
Return
}

n::
{
SendInput name
Send {Enter}
Return
}

!v::
{
SendInput value
Send {Enter}
Return
}

!s::
{
SendInput show
Send {Enter}
Return
}

#IfWinActive
F12::
{
Sleep 10000
Return
}

^!r::
{
Reload
Return
}

^q::
{
ExitApp
Return
}