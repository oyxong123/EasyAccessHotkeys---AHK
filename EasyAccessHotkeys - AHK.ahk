#NoEnv 
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#WinActivateForce  ; Enable activating windows forcefully.

SetTitleMatchMode, 2
SetCapsLockState, AlwaysOff
#If GetKeyState("CapsLock", "P")
    p Up::  ; Open Programming Life squared images directory of today.
        path := "C:\Users\Admin\Desktop\Programming Life"
        OpenTodayPath(path)
        Return
    +p Up::  ; Open Programming Life Record.txt.
        path := "C:\Users\Admin\Desktop\Programming Life Record.txt"
        windowTitle := "Programming Life Record.txt - Notepad"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        Send, ^{End}
        Return
    l Up::  ; Open Language Cottage directory.
        path := "C:\Users\Admin\Desktop\Language Cottage"
        windowTitle := "Language Cottage"
        OpenPath(path, windowTitle)
        Return
    m Up::  ; Open Music Square directory.
        path := "C:\Users\Admin\Desktop\Music Square" 
        OpenTodayPath(path)
        Return
    +m Up::  ; Open Music Square Record.txt.
        path := "C:\Users\Admin\Desktop\Music Square Record.txt"
        windowTitle := "Music Square Record.txt - Notepad"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        Send, ^{End}
        Return
    i Up::  ; Open Life directory.
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
    b Up::  ; Open Bookshelf directory.
        path := "C:\Users\Admin\Desktop\Bookshelf"
        windowTitle := "Bookshelf"
        OpenPath(path, windowTitle)
        Return
    t Up::  ; Open Utp Life directory.
        path := "C:\Users\Admin\Desktop\utp degree\Utp Life"
        OpenTodayPath(path)
        Return
    o Up::  ; Open Precious Moments directory.
        path := "C:\Users\Admin\Desktop\Precious Moments"
        windowTitle := "Precious Moments"
        OpenPath(path, windowTitle)
        Return
    u Up::  ; Open Pending Uploads directory.
        path := "C:\Users\Admin\Desktop\Pending Uploads"
        windowTitle := "Pending Uploads"
        OpenPath(path, windowTitle)
        Return
    +u Up::  ; Open unlimited words.txt.
        path := "C:\Users\Admin\Desktop\unlimited words.txt"
        windowTitle := "unlimited words.txt - Notepad"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        Send, ^{End}
        Return
    r Up::  ; Open work list.txt.
        path := "C:\Users\Admin\Desktop\work list.txt"
        windowTitle := "work list.txt - Notepad"
        OpenPath(path, windowTitle)
        Return
    w Up::  ; Open what i did.txt.
        path := "C:\Users\Admin\Desktop\what i did.txt"
        windowTitle := "what i did.txt - Notepad"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        Send, ^{End}
        Return
    c Up::  ; Open Clock.
        Send, {CapsLock Up}
        send, {lwin down}
        sleep, 100
        send, {lwin up}
        sleep, 300
        ControlSend, DirectUIHWND1, test, Start menu
        ; Send, {Enter}
        Return
    e Up::  ; Open Personal Things to Keep Track excel file.
        path := "C:\Users\Admin\Desktop\Personal Things to Keep Track.xlsm"
        windowTitle := "Personal Things to Keep Track.xlsm - Excel"
        OpenPath(path, windowTitle)
        WinWaitActive, %windowTitle%
        If WinActive(windowTitle)
        {
            Send, #{Up}
        }
        Return
    w & s Up::  ; Open Whatsapp.
        path := "https://web.whatsapp.com/"
        windowTitle := "WhatsApp - Google Chrome"
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
    o & l Up::  ; Open Outlook.
        path := "https://outlook.office.com/mail/"
        windowTitle := "Outlook - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    m & s Up::  ; Open Microsoft Teams.
        path := "https://teams.microsoft.com/v2/"
        windowTitle := "Teams and Channels | Microsoft Teams - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    t & i Up::  ; Open Twitter.
        path := "https://twitter.com/home"
        windowTitle := "Home / X - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    f & c Up::  ; Open all tabs for fast check news + messages.
        path := "https://web.whatsapp.com/"
        windowTitle := "WhatsApp - Google Chrome"
        OpenPath(path, windowTitle)
        path := "https://outlook.office.com/mail/"
        windowTitle := "Outlook - Google Chrome"
        OpenPath(path, windowTitle)
        path := "https://teams.microsoft.com/v2/"
        windowTitle := "Teams and Channels | Microsoft Teams - Google Chrome"
        OpenPath(path, windowTitle)
        path := "https://www.facebook.com/"
        windowTitle := "Facebook - Google Chrome"
        OpenPath(path, windowTitle)
        path := "https://www.instagram.com/"
        windowTitle := "Instagram - Google Chrome"
        OpenPath(path, windowTitle)
        path := "https://twitter.com/home"
        windowTitle := "Home / X - Google Chrome"
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
    c & r Up::  ; Open Chrome.
        path := "C:\Program Files\Google\Chrome\Application\chrome.exe"
        windowTitle := "ahk_exe chrome.exe"
        OpenPath(path, windowTitle)
        Return
    a Up::  ; Open ChatGPT.
        path := "https://chat.openai.com/"
        windowTitle := "ChatGPT - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    t & l Up::  ; Open Telegram.
        path := "https://web.telegram.org/a/#1301490763"
        windowTitle := "Telegram - Google Chrome"
        OpenPath(path, windowTitle)
        Return
    q Up::  ; Open apps for language cottage session.
        path := "C:\Users\Admin\Desktop\Sora No Kiseki 3rd Translation_12.docx"
        windowTitle := "Sora No Kiseki 3rd Translation_12.docx - Word"
        OpenPath(path, windowTitle) 
        WinWait, windowTitle,,10
        if WinActive(windowTitle)
        {
            OpenInSecondMonitor()
        }
        ;open clock and set time to 30 min and start.
        path := "C:\Program Files\PPSSPP\PPSSPPWindows64.exe"
        windowTitle := "ahk_exe PPSSPPWindows64.exe"
        OpenPath(path, windowTitle)
        If WinActive(windowTitle)
        {
            Send, {Down 2}
            Send, {Enter}
            Send, {Esc}
            Send, {Left 2}
            Send, {Enter}
        }
        Return
    d Up::  ; Open Downloads directory.
        path := "C:\Users\Admin\Downloads"
        windowTitle := "Downloads"
        OpenPath(path, windowTitle) 
        Return
    d & m Up::  ; Open Documents directory.
        path := "C:\Users\Admin\Documents"
        windowTitle := "Documents"
        OpenPath(path, windowTitle) 
        Return
    b & t Up::  ; Open Bluetooth settings menu.
        path := "ms-settings:connecteddevices"
        OpenPathAllowDuplicate(path) 
        Return
    ; d & c Up::  ; Open phone DCIM directory.
    ;     Run,`,`,`:`:{20D04FE0-3AEA-1069-A2D8-08002B30309D}
    ;     path := "This PC\Redmi 6\Internal shared storage\DCIM\Camera"
    ;     windowTitle := "Camera"
    ;     OpenPath(path, windowTitle) 
    ;     Return
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