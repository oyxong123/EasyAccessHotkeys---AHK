#NoEnv 
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#WinActivateForce  ; Enable activating windows forcefully.

SetTitleMatchMode, 2
SetCapsLockState, AlwaysOff
#If GetKeyState("CapsLock", "P")
    ; ============================ File/Folder ============================
    p Up::  ; Open Programming Life.
        path := "C:\Users\Admin\Desktop\Programming Life"
        OpenTodayPath(path)
        Return
    l Up::  ; Open Language Cottage.
        path := "C:\Users\Admin\Desktop\Language Cottage"
        windowTitle := "Language Cottage"
        OpenTodayPath(path)
        Return
    m Up::  ; Open Music Square.
        path := "C:\Users\Admin\Desktop\Music Square" 
        OpenTodayPath(path)
        Return
    i Up::  ; Open Life.
        path := "C:\Users\Admin\Desktop\Life"
        OpenTodayPath(path)
        Return
    +i Up::  ; Open Life.txt.
        path := "C:\Users\Admin\Desktop\Life.txt"
        windowTitle := "Life.txt - Notepad"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        Send, ^{End}
        Return
    k Up::  ; Open Artwork Room.
        path := "C:\Users\Admin\Desktop\Artwork Room"
        OpenTodayPath(path)
        Return
    o Up::  ; Open Precious Moments.
        path := "C:\Users\Admin\Desktop\Precious Moments"
        windowTitle := "Precious Moments"
        OpenPath(path, windowTitle)
        Return
    u Up::  ; Open Pending Uploads.
        path := "C:\Users\Admin\Desktop\Pending Uploads"
        windowTitle := "Pending Uploads"
        OpenPath(path, windowTitle)
        Return
    y Up::  ; Open work list.txt.
        path := "C:\Users\Admin\Desktop\work list.txt"
        windowTitle := "work list.txt - Notepad"
        OpenPath(path, windowTitle)
        Return
    1 Up::  ; Open English.
        path := "C:\Users\Admin\Desktop\English.md"
        windowTitle := "English.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    2 Up::  ; Open Chinese.
        path := "C:\Users\Admin\Desktop\Chinese.md"
        windowTitle := "Chinese.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    3 Up::  ; Open Japanese.
        path := "C:\Users\Admin\Desktop\Japanese.md"
        windowTitle := "Japanese.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    4 Up::  ; Open Proper Nouns.
        path := "C:\Users\Admin\Desktop\Proper Nouns.md"
        windowTitle := "Proper Nouns.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    5 Up::  ; Open Tarot Cards.
        path := "C:\Users\Admin\Desktop\Tarot Cards.md"
        windowTitle := "Tarot Cards.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    q Up::  ; Open 我的故事库.
        path := "C:\Users\Admin\Desktop\我的故事库.md"
        windowTitle := "我的故事库.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    w Up::  ; Open 我的历史.
        path := "C:\Users\Admin\Desktop\我的历史.md"
        windowTitle := "我的历史.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    e Up::  ; Open 我.
        path := "C:\Users\Admin\Desktop\我.md"
        windowTitle := "我.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    r Up::  ; Open 做事原则.
        path := "C:\Users\Admin\Desktop\做事原则.md"
        windowTitle := "做事原则.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    a Up::  ; Open Work Progress.
        path := "C:\Users\Admin\Desktop\Work Progress.md"
        windowTitle := "Work Progress.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    s Up::  ; Open 人际关系.
        path := "C:\Users\Admin\Desktop\人际关系.md"
        windowTitle := "人际关系.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    d Up::  ; Open MBTI.
        path := "C:\Users\Admin\Desktop\MBTI.md"
        windowTitle := "MBTI.md"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    d & l Up::  ; Open Downloads directory.
        path := "C:\Users\Admin\Downloads"
        windowTitle := "Downloads"
        OpenPath(path, windowTitle) 
        Return
    d & m Up::  ; Open Documents directory.
        path := "C:\Users\Admin\Documents"
        windowTitle := "Documents"
        OpenPath(path, windowTitle) 
        Return

    ; ============================ App ============================
    b Up::  ; Open Actual Budget.
        path := "C:\Users\Admin\Desktop\Utilities\Actual Budget"
        windowTitle := "ahk_exe Actual.exe"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
            Sleep, 2000
            Send, t
        }
        Return
    n Up::  ; Open Samsung Notes.
        path := "C:\Users\Admin\\Desktop\Utilities\Samsung Notes"
        windowTitle := "Samsung Notes"
        OpenPath(path, windowTitle) 
        Return

    ; ============================ System ============================
    SC033 Up::  ; Access explorer nearest parent directory.
        Send, !{Up} 
        Return
    . Up::  ; Access previously accessed explorer directory.
        Send, {BackSpace}
        Return
    Del Up::  ; Empty C Drive recycle bin. 
        FileRecycleEmpty, C:\
        MsgBox, Recycle Bin Emptied!
        Return
    Space Up::  ; Send Alt+F4 (Force close window). 
        Send, !{F4}
        Return
    Enter Up::  ; Send Ctrl+S (Save command).
        Send, ^s
        Return
    b & t Up::  ; Open Bluetooth settings menu.
        path := "ms-settings:connecteddevices"
        OpenPathAllowDuplicate(path) 
        Return
    
    ; ============================ Website ============================
    c & r Up::  ; Open Chrome.
        path := "C:\Program Files\Google\Chrome\Application\chrome.exe"
        windowTitle := "ahk_exe chrome.exe"
        OpenPath(path, windowTitle)
        Return
    w & s Up::  ; Open Whatsapp.
        path := "https://web.whatsapp.com/"
        windowTitle := "WhatsApp - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    t & l Up::  ; Open Telegram.
        path := "https://web.telegram.org/a/#1301490763"
        windowTitle := "Telegram - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    f & b Up::  ; Open Facebook.
        path := "https://www.facebook.com/"
        windowTitle := "Facebook - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    i & g Up::  ; Open Instagram.
        path := "https://www.instagram.com/"
        windowTitle := "Instagram - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    y & t Up::  ; Open Youtube.
        path := "https://www.youtube.com/"
        windowTitle := "YouTube - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    b & l Up::  ; Open Bilibili.
        path := "https://www.bilibili.com/"
        windowTitle := "哔哩哔哩 (゜-゜)つロ 干杯~-bilibili - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    m & l Up::  ; Open Gmail.
        path := "https://mail.google.com/mail/"
        windowTitle := "Gmail - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    o & l Up::  ; Open Outlook.
        path := "https://outlook.office.com/mail/"
        windowTitle := "Outlook - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    g & m Up::  ; Open Gemini.
        path := "https://gemini.google.com/"
        windowTitle := "Google Gemini - Google Chrome"
        OpenPath(path, windowTitle)
        Return

    ; ============================ Legacy ============================
    ; e Up::  ; Open Personal Things to Keep Track.
    ;     path := "C:\Users\Admin\Desktop\Personal Things to Keep Track.xlsm"
    ;     windowTitle := "Personal Things to Keep Track.xlsm - Excel"
    ;     OpenPath(path, windowTitle)
    ;     WinWaitActive, %windowTitle%
    ;     If WinActive(windowTitle)
    ;     {
    ;         Send, #{Up}
    ;     }
    ;     Return
    ; q Up::  ; Open apps for language cottage session.
    ;     ; path := "C:\Users\Admin\Desktop\Sora No Kiseki 3rd Translation_13.docx"
    ;     ; windowTitle := "Sora No Kiseki 3rd Translation_13.docx - Word"
    ;     ; OpenPath(path, windowTitle) 
    ;     ; WinWait, windowTitle,,10
    ;     ; if WinActive(windowTitle)
    ;     ; {
    ;     ;     OpenInSecondMonitor()
    ;     ; }
    ;     path := "C:\Program Files\PPSSPP\PPSSPPWindows64.exe"
    ;     windowTitle := "ahk_exe PPSSPPWindows64.exe"
    ;     OpenPath(path, windowTitle)
    ;     If WinActive(windowTitle)
    ;     {
    ;         Send, {Down 2}
    ;         Send, {Enter}
    ;         Send, {Esc}
    ;         Send, {Left 2}
    ;         Send, {Enter}
    ;     }
    ;     Return
    ; \ Up::  ; Open Yx-RoutineTracker.
    ;     TrayIcon_Button("Yx-RoutineTracker.exe")
    ;     Return
    ; c & h Up::  ; Open ChatGPT.
    ;     path := "https://chat.openai.com/"
    ;     windowTitle := "Chat GPT - Google Chrome"
    ;     OpenPath(path, windowTitle)
    ;     Return
    ; t & i Up::  ; Open Twitter.
    ;     path := "https://twitter.com/home"
    ;     windowTitle := "Home / X - Google Chrome"
    ;     OpenPath(path, windowTitle)
    ;     Return
    ; f & c Up::  ; Open all tabs for fast check news + messages.
    ;     path := "https://web.whatsapp.com/"
    ;     windowTitle := "WhatsApp - Google Chrome"
    ;     OpenPath(path, windowTitle)
    ;     path := "https://outlook.office.com/mail/"
    ;     windowTitle := "Outlook - Google Chrome"
    ;     OpenPath(path, windowTitle)
    ;     path := "https://teams.microsoft.com/v2/"
    ;     windowTitle := "Teams and Channels | Microsoft Teams - Google Chrome"
    ;     OpenPath(path, windowTitle)
    ;     path := "https://www.facebook.com/"
    ;     windowTitle := "Facebook - Google Chrome"
    ;     OpenPath(path, windowTitle)
    ;     path := "https://www.instagram.com/"
    ;     windowTitle := "Instagram - Google Chrome"
    ;     OpenPath(path, windowTitle)
    ;     path := "https://twitter.com/home"
    ;     windowTitle := "Home / X - Google Chrome"
    ;     OpenPath(path, windowTitle)
    ;     path := "https://mail.google.com/mail/"
    ;     windowTitle := "Gmail - Google Chrome"
    ;     OpenPath(path, windowTitle)
    ;     path := "C:\Users\Admin\Desktop\Utilities\One Calendar"
    ;     windowTitle := "One Calendar"
    ;     OpenPath(path, windowTitle)
    ;     Return
    ;     Return
    ; +p Up::  ; Open Programming Life Record.txt.
    ;     path := "C:\Users\Admin\Desktop\Programming Life Record.txt"
    ;     windowTitle := "Programming Life Record.txt - Notepad"
    ;     OpenPath(path, windowTitle)
    ;     WinWaitActive, %windowTitle%
    ;     Return
    ; +m Up::  ; Open Music Square Record.txt.
    ;     path := "C:\Users\Admin\Desktop\Music Square Record.txt"
    ;     windowTitle := "Music Square Record.txt - Notepad"
    ;     OpenPath(path, windowTitle)
    ;     WinWaitActive, %windowTitle%
    ;     Send, ^{End}
    ;     Return
    ; t Up::  ; Open Utp Life directory.
    ;     path := "C:\Users\Admin\Desktop\utp degree\Utp Life"
    ;     OpenTodayPath(path)
    ;     Return
    ; +u Up::  ; Open unlimited words.txt.
    ;     path := "C:\Users\Admin\Desktop\unlimited words.txt"
    ;     windowTitle := "unlimited words.txt - Notepad"
    ;     OpenPath(path, windowTitle)
    ;     WinWaitActive, %windowTitle%
    ;     Send, ^{End}
    ;     Return
    ; w Up::  ; Open what i did.txt.
    ;     path := "C:\Users\Admin\Desktop\what i did.txt"
    ;     windowTitle := "what i did.txt - Notepad"
    ;     OpenPath(path, windowTitle)
    ;     WinWaitActive, %windowTitle%
    ;     Send, ^{End}
    ;     Return
    ; c Up::  ; Open Clock.
    ;     Send, {CapsLock Up}
    ;     send, {lwin down}
    ;     sleep, 100
    ;     send, {lwin up}
    ;     sleep, 300
    ;     ControlSend, DirectUIHWND1, test, Start menu
    ;     ; Send, {Enter}
    ;     Return
    ; m & s Up::  ; Open Microsoft Teams.
    ;     path := "https://teams.microsoft.com/v2/"
    ;     windowTitle := "Teams and Channels | Microsoft Teams - Google Chrome"
    ;     OpenPath(path, windowTitle)
    ;     Return
    ; p & a Up::  ; Open Powerapps MyTimetable.
    ;     path := "https://apps.powerapps.com/play/e/cb9a5f19-5979-e480-b742-e25ee619359d/a/a10f246e-4c65-4e01-8923-6fa7f65de051?tenantId=84187be3-037e-41ec-889c-a150fe476432&hint=9b584276-674f-4d79-ad75-ff3381d7139e&sourcetime=1735616167669#"
    ;     windowTitle := "My Timetable - Power Apps - Google Chrome"
    ;     OpenPath(path, windowTitle) 
    ;     Return
    ; d & c Up::  ; Open phone DCIM directory.
    ;     Run,`,`,`:`:{20D04FE0-3AEA-1069-A2D8-08002B30309D}
    ;     path := "This PC\Redmi 6\Internal shared storage\DCIM\Camera"
    ;     windowTitle := "Camera"
    ;     OpenPath(path, windowTitle) 
    ;     Return
#If

*CapsLock::
    KeyWait, CapsLock
    If (A_ThisHotkey = *CapsLock)
        If GetKeyState("CapsLock", "T") = 1
        {
            SetCapsLockState, off
        }
        Else If GetKeyState("CapsLock", "T") = 0
        {
            SetCapsLockState, on
        }
    Return


OpenTodaySquaredPath(path) 
{
    FormatTime, strDateToday, , yyyy_MM_dd
    pathFull := path . "\" . strDateToday . "\squared"
    windowTitle := "squared"

    ;make it check For whether the parent folder's path exists(?) I don't know If that's possible

    If WinExist(windowTitle)
    {
        WinActivate
    }
    Else
    {
        Run, %pathFull%
        WinActivate
    }
    SetCapsLockState, off
}

OpenTodayPath(path) 
{
    FormatTime, strDateToday, , yyyy_MM_dd
    pathFull := path . "\" . strDateToday
    windowTitle := "strDateToday"

    ;make it check For whether the parent folder's path exists(?) I don't know If that's possible

    If WinExist(windowTitle)
    {
        WinActivate
    }
    Else
    {
        Run, %pathFull%
        WinActivate
    }
    SetCapsLockState, off
}

OpenPartialPath(pathParent, partialName, windowTitle) 
{
    ;do regex search, loop, and find the path that fits the pathParent and has the partialName.

    If WinExist(windowTitle)
    {
        WinActivate
    }
    Else
    {
        Run, %path%
        WinActivate
    }
    SetCapsLockState, off
}

OpenPath(path, windowTitle) 
{
    If WinExist(windowTitle)
    {
        WinActivate
    }
    Else
    {
        Run, %path%
        WinActivate
    }
    SetCapsLockState, off
}

OpenPathAllowDuplicate(path) 
{
    Run, %path%
    WinActivate
    SetCapsLockState, off
}

OpenInSecondMonitor()  ; Opens in primary monitor if secondary monitor not present.
{
    ; check monitor count
	SysGet, monitorCount, 80

    ; Move window to second monitor.
    if (monitorCount == 2)
	{
		MouseMove,2206, 525, 0
	}

    ; Send Win+Up multiple times to make it expand to full screen at that monitor.
    Send, #{Up 2}
}

; ----------------------------------------------------------------------------------------------------------------------
; Name ..........: TrayIcon library
; Description ...: Provide some useful functions to deal with Tray icons.
; AHK Version ...: AHK_L 1.1.22.02 x32/64 Unicode
; Original Author: Sean (http://goo.gl/dh0xIX) (http://www.autohotkey.com/forum/viewtopic.php?t=17314)
; Update Author .: Cyruz (http://ciroprincipe.info) (http://ahkscript.org/boards/viewtopic.php?f=6&t=1229)
; Mod Author ....: Fanatic Guru
; License .......: WTFPL - http://www.wtfpl.net/txt/copying/
; Version Date...: 2019 04 04
; Note ..........: Many people have updated Sean's original work including me but Cyruz's version seemed the most straight
; ...............: forward update for 64 bit so I adapted it with some of the features from my Fanatic Guru version.
; Update 20160120: Went through all the data types in the DLL and NumGet and matched them up to MSDN which fixed IDcmd.
; Update 20160308: Fix for Windows 10 NotifyIconOverflowWindow
; Update 20180313: Fix problem with "VirtualFreeEx" pointed out by nnnik
; Update 20180313: Additional fix for previous Windows 10 NotifyIconOverflowWindow fix breaking non-hidden icons
; Update 20190404: Added TrayIcon_Set by Cyruz
; ----------------------------------------------------------------------------------------------------------------------

; ----------------------------------------------------------------------------------------------------------------------
; Function ......: TrayIcon_GetInfo
; Description ...: Get a series of useful information about tray icons.
; Parameters ....: sExeName  - The exe for which we are searching the tray icon data. Leave it empty to receive data for 
; ...............:             all tray icons.
; Return ........: oTrayIcon_GetInfo - An array of objects containing tray icons data. Any entry is structured like this:
; ...............:             oTrayIcon_GetInfo[A_Index].idx     - 0 based tray icon index.
; ...............:             oTrayIcon_GetInfo[A_Index].IDcmd   - Command identifier associated with the button.
; ...............:             oTrayIcon_GetInfo[A_Index].pID     - Process ID.
; ...............:             oTrayIcon_GetInfo[A_Index].uID     - Application defined identifier for the icon.
; ...............:             oTrayIcon_GetInfo[A_Index].msgID   - Application defined callback message.
; ...............:             oTrayIcon_GetInfo[A_Index].hIcon   - Handle to the tray icon.
; ...............:             oTrayIcon_GetInfo[A_Index].hWnd    - Window handle.
; ...............:             oTrayIcon_GetInfo[A_Index].Class   - Window class.
; ...............:             oTrayIcon_GetInfo[A_Index].Process - Process executable.
; ...............:             oTrayIcon_GetInfo[A_Index].Tray    - Tray Type (Shell_TrayWnd or NotifyIconOverflowWindow).
; ...............:             oTrayIcon_GetInfo[A_Index].tooltip - Tray icon tooltip.
; Info ..........: TB_BUTTONCOUNT message - http://goo.gl/DVxpsg
; ...............: TB_GETBUTTON message   - http://goo.gl/2oiOsl
; ...............: TBBUTTON structure     - http://goo.gl/EIE21Z
; ----------------------------------------------------------------------------------------------------------------------

TrayIcon_GetInfo(sExeName := "")
{
	DetectHiddenWindows, % (Setting_A_DetectHiddenWindows := A_DetectHiddenWindows) ? "On" :
	oTrayIcon_GetInfo := {}
	For key, sTray in ["Shell_TrayWnd", "NotifyIconOverflowWindow"]
	{
		idxTB := TrayIcon_GetTrayBar(sTray)
		WinGet, pidTaskbar, PID, ahk_class %sTray%
		
		hProc := DllCall("OpenProcess", UInt, 0x38, Int, 0, UInt, pidTaskbar)
		pRB   := DllCall("VirtualAllocEx", Ptr, hProc, Ptr, 0, UPtr, 20, UInt, 0x1000, UInt, 0x4)

		SendMessage, 0x418, 0, 0, ToolbarWindow32%idxTB%, ahk_class %sTray%   ; TB_BUTTONCOUNT
		
		szBtn := VarSetCapacity(btn, (A_Is64bitOS ? 32 : 20), 0)
		szNfo := VarSetCapacity(nfo, (A_Is64bitOS ? 32 : 24), 0)
		szTip := VarSetCapacity(tip, 128 * 2, 0)
		
		Loop, %ErrorLevel%
		{
			SendMessage, 0x417, A_Index - 1, pRB, ToolbarWindow32%idxTB%, ahk_class %sTray%   ; TB_GETBUTTON
			DllCall("ReadProcessMemory", Ptr, hProc, Ptr, pRB, Ptr, &btn, UPtr, szBtn, UPtr, 0)

			iBitmap := NumGet(btn, 0, "Int")
			IDcmd   := NumGet(btn, 4, "Int")
			statyle := NumGet(btn, 8)
			dwData  := NumGet(btn, (A_Is64bitOS ? 16 : 12))
			iString := NumGet(btn, (A_Is64bitOS ? 24 : 16), "Ptr")

			DllCall("ReadProcessMemory", Ptr, hProc, Ptr, dwData, Ptr, &nfo, UPtr, szNfo, UPtr, 0)

			hWnd  := NumGet(nfo, 0, "Ptr")
			uID   := NumGet(nfo, (A_Is64bitOS ? 8 : 4), "UInt")
			msgID := NumGet(nfo, (A_Is64bitOS ? 12 : 8))
			hIcon := NumGet(nfo, (A_Is64bitOS ? 24 : 20), "Ptr")

			WinGet, pID, PID, ahk_id %hWnd%
			WinGet, sProcess, ProcessName, ahk_id %hWnd%
			WinGetClass, sClass, ahk_id %hWnd%

			If !sExeName || (sExeName = sProcess) || (sExeName = pID)
			{
				DllCall("ReadProcessMemory", Ptr, hProc, Ptr, iString, Ptr, &tip, UPtr, szTip, UPtr, 0)
				Index := (oTrayIcon_GetInfo.MaxIndex()>0 ? oTrayIcon_GetInfo.MaxIndex()+1 : 1)
				oTrayIcon_GetInfo[Index,"idx"]     := A_Index - 1
				oTrayIcon_GetInfo[Index,"IDcmd"]   := IDcmd
				oTrayIcon_GetInfo[Index,"pID"]     := pID
				oTrayIcon_GetInfo[Index,"uID"]     := uID
				oTrayIcon_GetInfo[Index,"msgID"]   := msgID
				oTrayIcon_GetInfo[Index,"hIcon"]   := hIcon
				oTrayIcon_GetInfo[Index,"hWnd"]    := hWnd
				oTrayIcon_GetInfo[Index,"Class"]   := sClass
				oTrayIcon_GetInfo[Index,"Process"] := sProcess
				oTrayIcon_GetInfo[Index,"Tooltip"] := StrGet(&tip, "UTF-16")
				oTrayIcon_GetInfo[Index,"Tray"]    := sTray
			}
		}
		DllCall("VirtualFreeEx", Ptr, hProc, Ptr, pRB, UPtr, 0, Uint, 0x8000)
		DllCall("CloseHandle", Ptr, hProc)
	}
	DetectHiddenWindows, %Setting_A_DetectHiddenWindows%
	Return oTrayIcon_GetInfo
}

; ----------------------------------------------------------------------------------------------------------------------
; Function .....: TrayIcon_Hide
; Description ..: Hide or unhide a tray icon.
; Parameters ...: IDcmd - Command identifier associated with the button.
; ..............: bHide - True for hide, False for unhide.
; ..............: sTray - 1 or Shell_TrayWnd || 0 or NotifyIconOverflowWindow.
; Info .........: TB_HIDEBUTTON message - http://goo.gl/oelsAa
; ----------------------------------------------------------------------------------------------------------------------
TrayIcon_Hide(IDcmd, sTray := "Shell_TrayWnd", bHide:=True)
{
	(sTray == 0 ? sTray := "NotifyIconOverflowWindow" : sTray == 1 ? sTray := "Shell_TrayWnd" : )
	DetectHiddenWindows, % (Setting_A_DetectHiddenWindows := A_DetectHiddenWindows) ? "On" :
	idxTB := TrayIcon_GetTrayBar()
	SendMessage, 0x404, IDcmd, bHide, ToolbarWindow32%idxTB%, ahk_class %sTray% ; TB_HIDEBUTTON
	SendMessage, 0x1A, 0, 0, , ahk_class %sTray%
	DetectHiddenWindows, %Setting_A_DetectHiddenWindows%
}

; ----------------------------------------------------------------------------------------------------------------------
; Function .....: TrayIcon_Delete
; Description ..: Delete a tray icon.
; Parameters ...: idx - 0 based tray icon index.
; ..............: sTray - 1 or Shell_TrayWnd || 0 or NotifyIconOverflowWindow.
; Info .........: TB_DELETEBUTTON message - http://goo.gl/L0pY4R
; ----------------------------------------------------------------------------------------------------------------------
TrayIcon_Delete(idx, sTray := "Shell_TrayWnd")
{
	(sTray == 0 ? sTray := "NotifyIconOverflowWindow" : sTray == 1 ? sTray := "Shell_TrayWnd" : )
	DetectHiddenWindows, % (Setting_A_DetectHiddenWindows := A_DetectHiddenWindows) ? "On" :
	idxTB := TrayIcon_GetTrayBar()
	SendMessage, 0x416, idx, 0, ToolbarWindow32%idxTB%, ahk_class %sTray% ; TB_DELETEBUTTON
	SendMessage, 0x1A, 0, 0, , ahk_class %sTray%
	DetectHiddenWindows, %Setting_A_DetectHiddenWindows%
}

; ----------------------------------------------------------------------------------------------------------------------
; Function .....: TrayIcon_Remove
; Description ..: Remove a tray icon.
; Parameters ...: hWnd, uID.
; ----------------------------------------------------------------------------------------------------------------------
TrayIcon_Remove(hWnd, uID)
{
		NumPut(VarSetCapacity(NID,(A_IsUnicode ? 2 : 1) * 384 + A_PtrSize * 5 + 40,0), NID)
		NumPut(hWnd , NID, (A_PtrSize == 4 ? 4 : 8 ))
		NumPut(uID  , NID, (A_PtrSize == 4 ? 8  : 16 ))
		Return DllCall("shell32\Shell_NotifyIcon", "Uint", 0x2, "Uint", &NID)
}

; ----------------------------------------------------------------------------------------------------------------------
; Function .....: TrayIcon_Move
; Description ..: Move a tray icon.
; Parameters ...: idxOld - 0 based index of the tray icon to move.
; ..............: idxNew - 0 based index where to move the tray icon.
; ..............: sTray - 1 or Shell_TrayWnd || 0 or NotifyIconOverflowWindow.
; Info .........: TB_MOVEBUTTON message - http://goo.gl/1F6wPw
; ----------------------------------------------------------------------------------------------------------------------
TrayIcon_Move(idxOld, idxNew, sTray := "Shell_TrayWnd")
{
	(sTray == 0 ? sTray := "NotifyIconOverflowWindow" : sTray == 1 ? sTray := "Shell_TrayWnd" : )
	DetectHiddenWindows, % (Setting_A_DetectHiddenWindows := A_DetectHiddenWindows) ? "On" :
	idxTB := TrayIcon_GetTrayBar()
	SendMessage, 0x452, idxOld, idxNew, ToolbarWindow32%idxTB%, ahk_class %sTray% ; TB_MOVEBUTTON
	DetectHiddenWindows, %Setting_A_DetectHiddenWindows%
}

; ----------------------------------------------------------------------------------------------------------------------
; Function .....: TrayIcon_Set
; Description ..: Modify icon with the given index for the given window.
; Parameters ...: hWnd       - Window handle.
; ..............: uId        - Application defined identifier for the icon.
; ..............: hIcon      - Handle to the tray icon.
; ..............: hIconSmall - Handle to the small icon, for window menubar. Optional.
; ..............: hIconBig   - Handle to the big icon, for taskbar. Optional.
; Return .......: True on success, false on failure.
; Info .........: NOTIFYICONDATA structure  - https://goo.gl/1Xuw5r
; ..............: Shell_NotifyIcon function - https://goo.gl/tTSSBM
; ----------------------------------------------------------------------------------------------------------------------
TrayIcon_Set(hWnd, uId, hIcon, hIconSmall:=0, hIconBig:=0)
{
    d := A_DetectHiddenWindows
    DetectHiddenWindows, On
    ; WM_SETICON = 0x0080
    If ( hIconSmall ) 
        SendMessage, 0x0080, 0, hIconSmall,, ahk_id %hWnd%
    If ( hIconBig )
        SendMessage, 0x0080, 1, hIconBig,, ahk_id %hWnd%
    DetectHiddenWindows, %d%

    VarSetCapacity(NID, szNID := ((A_IsUnicode ? 2 : 1) * 384 + A_PtrSize*5 + 40),0)
    NumPut( szNID, NID, 0                           )
    NumPut( hWnd,  NID, (A_PtrSize == 4) ? 4   : 8  )
    NumPut( uId,   NID, (A_PtrSize == 4) ? 8   : 16 )
    NumPut( 2,     NID, (A_PtrSize == 4) ? 12  : 20 )
    NumPut( hIcon, NID, (A_PtrSize == 4) ? 20  : 32 )
    
    ; NIM_MODIFY := 0x1
    Return DllCall("Shell32.dll\Shell_NotifyIcon", UInt,0x1, Ptr,&NID)
}

; ----------------------------------------------------------------------------------------------------------------------
; Function .....: TrayIcon_GetTrayBar
; Description ..: Get the tray icon handle.
; ----------------------------------------------------------------------------------------------------------------------
TrayIcon_GetTrayBar(Tray:="Shell_TrayWnd")
{
	DetectHiddenWindows, % (Setting_A_DetectHiddenWindows := A_DetectHiddenWindows) ? "On" :
	WinGet, ControlList, ControlList, ahk_class %Tray%
	RegExMatch(ControlList, "(?<=ToolbarWindow32)\d+(?!.*ToolbarWindow32)", nTB)
	Loop, %nTB%
	{
		ControlGet, hWnd, hWnd,, ToolbarWindow32%A_Index%, ahk_class %Tray%
		hParent := DllCall( "GetParent", Ptr, hWnd )
		WinGetClass, sClass, ahk_id %hParent%
		If !(sClass = "SysPager" or sClass = "NotifyIconOverflowWindow" )
			Continue
		idxTB := A_Index
		Break
	}
	DetectHiddenWindows, %Setting_A_DetectHiddenWindows%
	Return  idxTB
}

; ----------------------------------------------------------------------------------------------------------------------
; Function .....: TrayIcon_GetHotItem
; Description ..: Get the index of tray's hot item.
; Info .........: TB_GETHOTITEM message - http://goo.gl/g70qO2
; ----------------------------------------------------------------------------------------------------------------------
TrayIcon_GetHotItem()
{
	idxTB := TrayIcon_GetTrayBar()
	SendMessage, 0x447, 0, 0, ToolbarWindow32%idxTB%, ahk_class Shell_TrayWnd ; TB_GETHOTITEM
	Return ErrorLevel << 32 >> 32
}

; ----------------------------------------------------------------------------------------------------------------------
; Function .....: TrayIcon_Button
; Description ..: Simulate mouse button click on a tray icon.
; Parameters ...: sExeName - Executable Process Name of tray icon.
; ..............: sButton  - Mouse button to simulate (L, M, R).
; ..............: bDouble  - True to double click, false to single click.
; ..............: index    - Index of tray icon to click if more than one match.
; ----------------------------------------------------------------------------------------------------------------------
TrayIcon_Button(sExeName, sButton := "L", bDouble := false, index := 1)
{
	DetectHiddenWindows, % (Setting_A_DetectHiddenWindows := A_DetectHiddenWindows) ? "On" :
	WM_MOUSEMOVE	  = 0x0200
	WM_LBUTTONDOWN	  = 0x0201
	WM_LBUTTONUP	  = 0x0202
	WM_LBUTTONDBLCLK = 0x0203
	WM_RBUTTONDOWN	  = 0x0204
	WM_RBUTTONUP	  = 0x0205
	WM_RBUTTONDBLCLK = 0x0206
	WM_MBUTTONDOWN	  = 0x0207
	WM_MBUTTONUP	  = 0x0208
	WM_MBUTTONDBLCLK = 0x0209
	sButton := "WM_" sButton "BUTTON"
	oIcons := {}
	oIcons := TrayIcon_GetInfo(sExeName)
	msgID  := oIcons[index].msgID
	uID    := oIcons[index].uID
	hWnd   := oIcons[index].hWnd
	if bDouble
		PostMessage, msgID, uID, %sButton%DBLCLK, , ahk_id %hWnd%
	else
	{
		PostMessage, msgID, uID, %sButton%DOWN, , ahk_id %hWnd%
		PostMessage, msgID, uID, %sButton%UP, , ahk_id %hWnd%
	}
	DetectHiddenWindows, %Setting_A_DetectHiddenWindows%
	return
}