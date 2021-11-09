;^ is Ctrl key
;# is window
;+ is Shift
;! is Alt key

SetTitleMatchMode, 2
GroupAdd, eagle, Schematic
GroupAdd, eagle, Board

; Gui, Add, Picture, w37 h37, ./img/show.png
; Gui, Add, Picture, w37 h37, ./img/group.png
; Gui, Add, Picture, w37 h37, ./img/mirror.png
; Gui, Add, Picture, w37 h37, ./img/rotate.png
; Gui, Add, Picture, w37 h37, ./img/copy.png
; Gui, Add, Picture, w37 h37, ./img/delete.png
; Gui, Add, Picture, w37 h37, ./img/add.png
; Gui, Add, Picture, w37 h37, ./img/net.png
; Gui, Add, Picture, w37 h37, ./img/bus.png
; Gui, Add, Picture, w37 h37, ./img/junction.png
; Gui, Add, Picture, w37 h37, ./img/label.png
; Gui, Add, Picture, w37 h37, ./img/name.png
; Gui, Add, Picture, w37 h37, ./img/value.png
; Gui, Add, Picture, w37 h37, ./img/split.png
Gui, Add, Picture,, ./img/schematic_tools.png

Gui, Add, Text,ys+12, S - show
Gui, Add, Text,y+20, G - group
Gui, Add, Text,y+20, V - move
Gui, Add, Text,y+20, M - mirror
Gui, Add, Text,y+20, R - rotate
Gui, Add, Text,y+20, C - copy
Gui, Add, Text,y+20, D - delete
Gui, Add, Text,y+20, A - add
Gui, Add, Text,y+20, W - net (wire)
Gui, Add, Text,y+20, B - bus
Gui, Add, Text,y+20, J - junction
Gui, Add, Text,y+20, L - label
Gui, Add, Text,y+20, N - name
Gui, Add, Text,y+20, Alt+V - value
Gui, Add, Text,y+20, Alt+S - split

Gui, Add, Picture,xs+150 ys, ./img/board_tools.png


Gui, Add, Text,xs, Ctrl+Q - Exit program
Gui, Add, Text,, Ctrl+Alt+R - Reload program


Gui, Add, Button, Default, Ok
Gui, Show, w300 h800, 
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