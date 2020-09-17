#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
SetTitleMatchMode 2
SendMode Input

; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

RAlt & F7::SendInput {Media_Prev}
RAlt & F8::SendInput {Media_Play_Pause}
RAlt & F9::SendInput {Media_Next}
+F10::SendInput {Volume_Mute}
+F11::SendInput {Volume_Down}
+F12::SendInput {Volume_Up}

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

; -------------------------------
;  Cursor Movement
;
; cmd + arrows - start & end of lines, with shift for selecting text
; -------------------------------
#Left::SendInput {Home}
#Right::SendInput {End}
+#Left::SendInput +{Home}
+#Right::SendInput +{End}
!Left::SendInput ^{Left}
!Right::SendInput ^{Right}
!+Left::SendInput ^+{Left}
!+Right::SendInput ^+{Right}

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------
#s::SendInput ^{s}
#a::SendInput ^{a}
#c::SendInput ^{c}
#v::SendInput ^{v}
#x::SendInput ^{x}
#o::SendInput ^{o}
#f::SendInput ^{f}
#z::SendInput ^{z}
#y::SendInput ^{y}
#t::SendInput ^{t}
#w::SendInput ^{w}

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; minimize windows
#m::WinMinimize,a


; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; ---- Line 0 :: Digit Keys ----
;==== map option + [1-0] ====
^!1::SendInput {¡}
^!2::SendInput {“}
^!3::SendInput {¶}
^!4::SendInput {¢}
^!5::
Send, {Ctrl down}{Alt down}8{Ctrl up}{Alt up}
return ;
^!6::
Send, {Ctrl down}{Alt down}9{Ctrl up}{Alt up}
return ;
^!7::SendInput {|}
^!8::
Send, {Ctrl down}{Alt down}7{Ctrl up}{Alt up}
return ;
^!9::
Send, {Ctrl down}{Alt down}0{Ctrl up}{Alt up}
return ;
^!0::SendInput {≠}
; ---------
; ==== map Shift + option + [1-0] ====
+^!1::SendInput {¬}
+^!2::SendInput {”}
+^!3::SendInput {#}
+^!4::SendInput {£}
+^!5::SendInput {ﬁ}
+^!6::SendInput {^}
+^!7::SendInput {\}
+^!8::SendInput {˜}
+^!9::SendInput {·}
+^!0::SendInput {¯}

;---- Letters :: Line 1 ----
;==== map Option + [q - ü]
^!q::SendInput {«}
^!w::SendInput {∑}
^!e::
Send, {Ctrl down}{Alt down}e{Ctrl up}{Alt up}
return
^!r::SendInput {®}
^!t::SendInput {†}
^!z::SendInput {Ω}
^!u::SendInput {¨}
^!i::SendInput {⁄}
^!o::SendInput {ø}
^!p::SendInput {π}
^!ü::SendInput {•}
;==== map Shift + Option + [q - ü]
+^!q::SendInput {»}
+^!w::SendInput {„}
+^!e::SendInput {‰}
+^!r::SendInput {¸}
+^!t::SendInput {˝}
+^!z::SendInput {ˇ}
+^!u::SendInput {Á}
+^!i::SendInput {Û}
+^!o::SendInput {Ø}
+^!p::SendInput {∏}
+^!ü::SendInput {°}

; ---- Letters :: Line 2 ----
;==== map Option + [a - #]
^!a::SendInput {å}
^!s::SendInput {‚}
^!d::SendInput {∂}
^!f::SendInput {ƒ}
^!g::SendInput {©}
^!h::SendInput {ª}
^!j::SendInput {º}
^!k::SendInput {∆}
^!l::
Send, {Ctrl down}{Alt down}q{Ctrl up}{Alt up}
return
^!ö::SendInput {œ}
^!ä::SendInput {æ}
;==== map Shift + Option + [a - #]
+^!a::SendInput {Å}
+^!s::SendInput {Í}
+^!d::SendInput {™}
+^!f::SendInput {Ï}
+^!g::SendInput {Ì}
+^!h::SendInput {Ó}
+^!j::SendInput {ı}
+^!k::SendInput {ˆ}
+^!l::SendInput {ﬂ}
+^!ö::SendInput {Œ}
+^!ä::SendInput {Æ}

;---- Letters :: Line 4 ----
;==== map Option + [y - -]
^!y::SendInput {¥}
^!x::SendInput {≈}
^!c::SendInput {ç}
^!v::SendInput {√}
^!b::SendInput {∫}
^!n::SendInput {~}
!m::SendInput {µ}
^!,::SendInput {∞}
^!.::SendInput {…}
^!-::SendInput {–}
;==== map Shift + Option + [y - -]
+^!y::SendInput {‡}
+^!x::SendInput {Ù}
+^!c::SendInput {Ç}
+^!v::SendInput {◊}
+^!b::SendInput {‹}
+^!n::SendInput {›}
+^!m::SendInput {˘}
+^!,::SendInput {˛}
+^!.::SendInput {÷}
+^!-::SendInput {—}

; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive
