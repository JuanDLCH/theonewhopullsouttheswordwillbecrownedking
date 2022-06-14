#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Si presiona la P, hacer clic

pullup(){
    Send, {Lbutton Down}
    Sleep, 100
    While True{
        DllCall("mouse_event", uint, 1, int, 0, int, -5000)
        Sleep, 5
    }
}

stop(){
    Send, {Lbutton Up}
    ExitApp
}

P::pullup()

O::ExitApp
