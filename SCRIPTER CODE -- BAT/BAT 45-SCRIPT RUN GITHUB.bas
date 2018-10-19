Attribute VB_Name = "Module1"
'--------------------------------------------------------------------------------
'    Component    : Module1
'    Project      : BAT 45-SCRIPT RUN GITHUB
'
'    Description  : Sub Main
'
'    Author       : Matthew Lanacster _ Matt.Lan@Btinternet.com
'    Modified #1  : Sun 04:05:20 Pm_07 Oct 2018
'    Modified #2  : Fri 17:41:30 Pm_19 Oct 2018
'--------------------------------------------------------------------------------


Sub Main()

    ' -------------------------------------------------------------------
    ' FOR THIS CODE ENABLE _ MICROSOFT SCRIPTING RUNTIME _ IN REFERENCES
    ' -------------------------------------------------------------------
    ' IT WILL DISPLAY THE DOS BOX PROMPT IN A SHOW WINDOW
    ' -------------------------------------------------------------------
    
       
    ' Shell "CMD /K START """" /REALTIME /MAX """ + "C:\Program Files\Siber Systems\GoodSync\gsync.exe" + """" + " sync ""C SCRIPTOR __ y _ 7G __ GITHUB""", vbMaximizedFocus
    ' MsgBox App.Path
    ' End
    
    
    ' HERE
    ' Shell "CMD /K " + """""" + "C:\Program Files\Siber Systems\GoodSync\gsync.exe" + """" + " " + "sync " + """" + "C SCRIPTOR __ y _ 7G __ GITHUB" + """" + ">" + """" + App.Path + "\GOODSYNC_ER_OUTPUT.TXT" + """""", vbMaximizedFocus
       
    
    ' Shell "CMD /K " + "TYPE %~dp0GOODSYNC_ER_OUTPUT.TXT"
    
    ' MsgBox "CMD /K " + """" + "C:\Program Files\Siber Systems\GoodSync\gsync.exe" + """" + " sync " + """" + "C SCRIPTOR __ y _ 7G __ GITHUB" + """"

    ' EXPERIMENTATION FOUND THIS RESULT
    'CMD /K ""C:\Program Files\Siber Systems\GoodSync\gsync.exe" sync "C SCRIPTOR __ y _ 7G __ GITHUB""

    ' End
    
    
    ' IF RUN BY COMMAND LINE #1 OR #2
    If Command$ <> "" Then
        FILE_EXE_RUNNER = "C:\SCRIPTER\SCRIPTER CODE -- GITHUB\BAT 45-SCRIPT RUN GITHUB_GOODSYNC.BAT"
    Else
        FILE_EXE_RUNNER = "C:\SCRIPTER\SCRIPTER CODE -- GITHUB\BAT 45-SCRIPT RUN GITHUB.BAT"
    End If
    
    If Dir(FILE_EXE_RUNNER) = "" Then
        MsgBox "File to Run Was Not Found" + vbCrLf + vbCrLf + FILE_EXE_RUNNER, vbMsgBoxSetForeground
        End
    End If
    
    Dim objShell
    Set objShell = CreateObject("Wscript.Shell")
    objShell.Run """" + FILE_EXE_RUNNER + """", 1, False
    Set objShell = Nothing

End Sub


'------------------------------------
'Source 12 Links Open and Find Source
'------------------------------------


'----
'Running external command (VBS & WSH)
'https://www.virtualhelp.me/scripts/57-vb-script/424-running-external-command-vbs-wsh
'----

'2.Using Run

'If you want to run a program in a new process:

'object .Run(strCommand, [intWindowStyle], [bWaitOnReturn])

'intWindowStyle is an integer value indicating window style. Here's a table of styles:

'intWindowStyle Description
'0   Hides the window and activates another window.
'1   Activates and displays a window. If the window is minimized or maximized, the system restores it to its original size and position. An application should specify this flag when displaying the window for the first time.
'2   Activates the window and displays it as a minimized window.
'3   Activates the window and displays it as a maximized window.
'4   Displays a window in its most recent size and position. The active window remains active.
'5   Activates the window and displays it in its current size and position.
'6   Minimizes the specified window and activates the next top-level window in the Z order.
'7   Displays the window as a minimized window. The active window remains active.
'8   Displays the window in its current state. The active window remains active.
'9   Activates and displays the window. If the window is minimized or maximized, the system restores it to its original size and position. An application should specify this flag when restoring a minimized window.
'10  Sets the show-state based on the state of the program that started the application.

'bWaitOnReturn an option to either wait for the process to return or continue without it (can be either true or false)
