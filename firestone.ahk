#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 3

SetTitleMatchMode 2
SetControlDelay -1

WinWait, Firestone
activewindow := "ahk_exe Firestone.exe"

^q::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	 ControlClick,x998 y345, ahk_exe Firestone.exe,, LEFT,, NA
}
Return

^e::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	WinActivate ahk_exe Firestone.exe
	ControlSend, ahk_parent, {3}, ahk_exe Firestone.exe
}
Return
