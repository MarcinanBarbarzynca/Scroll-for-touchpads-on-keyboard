#include <MsgBoxConstants.au3>

; Press Esc to terminate script, Pause/Break to "pause"

Global $g_bPaused = False

HotKeySet("-", "HotKeyPressed")
HotKeySet("=", "HotKeyPressed")

While 1
    Sleep(100)
WEnd

Func HotKeyPressed()
    Switch @HotKeyPressed ; The last hotkey pressed.
        Case "{PAUSE}" ; String is the {PAUSE} hotkey.
            $g_bPaused = Not $g_bPaused
            While $g_bPaused
                Sleep(100)
                ToolTip('Script is "Paused"', 0, 0)
            WEnd
            ToolTip("")

        Case "-" ; String is the {ESC} hotkey.
            MouseWheel ( "up" )

        Case "=" ; String is the Shift-Alt-d hotkey.
            MouseWheel ( "down"  )
    EndSwitch
EndFunc   ;==>HotKeyPressed
