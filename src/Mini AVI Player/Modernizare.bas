Attribute VB_Name = "Modernizare"
Option Explicit

Private Type RECT
    Left As Long
    Top As Long
    Right As Long
    Bottom As Long
End Type

Private Declare Function SystemParametersInfoWorkArea Lib "user32" Alias "SystemParametersInfoA" _
    (ByVal uAction As Long, ByVal uParam As Long, ByRef lpvParam As RECT, _
     ByVal fuWinIni As Long) As Long

Private Declare Function SHChangeNotify Lib "shell32.dll" _
    (ByVal wEventId As Long, ByVal uFlags As Long, _
     ByVal dwItem1 As Long, ByVal dwItem2 As Long) As Long

Private Declare Function SetWindowLongMovie Lib "user32" Alias "SetWindowLongA" _
    (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long

Private Declare Function CallWindowProcMovie Lib "user32" Alias "CallWindowProcA" _
    (ByVal lpPrevWndFunc As Long, ByVal hWnd As Long, ByVal uMsg As Long, _
     ByVal wParam As Long, ByVal lParam As Long) As Long

Private Declare Function IsWindow Lib "user32" (ByVal hWnd As Long) As Long

Private Const SPI_GETWORKAREA As Long = 48
Private Const SHCNE_ASSOCCHANGED As Long = &H8000000
Private Const SHCNF_IDLIST As Long = &H0
Private Const GWL_WNDPROC_MOVIE As Long = -4
Private Const WM_LBUTTONUP As Long = &H202
Private Const EDGE_MARGIN_PIXELS As Long = 8

Private gMovieWindow As Long
Private gMovieOldWndProc As Long

Public Sub PositionMainWindowBottomRight(ByVal frm As Form)
    Dim workArea As RECT
    Dim targetLeft As Long
    Dim targetTop As Long
    Dim marginX As Long
    Dim marginY As Long

    marginX = EDGE_MARGIN_PIXELS * Screen.TwipsPerPixelX
    marginY = EDGE_MARGIN_PIXELS * Screen.TwipsPerPixelY

    If SystemParametersInfoWorkArea(SPI_GETWORKAREA, 0, workArea, 0) <> 0 Then
        targetLeft = (workArea.Right * Screen.TwipsPerPixelX) - frm.Width - marginX
        targetTop = (workArea.Bottom * Screen.TwipsPerPixelY) - frm.Height - marginY
    Else
        targetLeft = Screen.Width - frm.Width - marginX
        targetTop = Screen.Height - frm.Height - marginY
    End If

    If targetLeft < 0 Then targetLeft = 0
    If targetTop < 0 Then targetTop = 0
    frm.Move targetLeft, targetTop
End Sub

Public Sub RegisterAviAssociation()
    Dim shell As Object
    Dim exePath As String
    Dim openCommand As String
    Dim progId As String

    On Error Resume Next

    exePath = App.Path
    If Right$(exePath, 1) <> "\" Then exePath = exePath & "\"
    exePath = exePath & App.EXEName & ".exe"

    'Do not create a broken association while the project is running in the IDE.
    If Len(Dir$(exePath)) = 0 Then Exit Sub

    progId = "MiniAVI.avi"
    openCommand = Chr$(34) & exePath & Chr$(34) & " " & Chr$(34) & "%1" & Chr$(34)

    Set shell = CreateObject("WScript.Shell")

    'Classic per-user association. This works directly on older Windows versions
    'and registers Mini AVI as an available AVI handler on current Windows versions.
    shell.RegWrite "HKCU\Software\Classes\.avi\", progId, "REG_SZ"
    shell.RegWrite "HKCU\Software\Classes\.avi\OpenWithProgids\" & progId, "", "REG_SZ"
    shell.RegWrite "HKCU\Software\Classes\" & progId & "\", "Mini AVI video", "REG_SZ"
    shell.RegWrite "HKCU\Software\Classes\" & progId & "\DefaultIcon\", _
                   Chr$(34) & exePath & Chr$(34) & ",0", "REG_SZ"
    shell.RegWrite "HKCU\Software\Classes\" & progId & "\shell\open\command\", _
                   openCommand, "REG_SZ"

    'Open With registration for the executable itself.
    shell.RegWrite "HKCU\Software\Classes\Applications\" & App.EXEName & ".exe\FriendlyAppName", _
                   "Mini AVI", "REG_SZ"
    shell.RegWrite "HKCU\Software\Classes\Applications\" & App.EXEName & ".exe\SupportedTypes\.avi", _
                   "", "REG_SZ"
    shell.RegWrite "HKCU\Software\Classes\Applications\" & App.EXEName & ".exe\shell\open\command\", _
                   openCommand, "REG_SZ"

    'Registration used by the Windows Default Apps interface.
    shell.RegWrite "HKCU\Software\MiniAVI\Capabilities\ApplicationName", _
                   "Mini AVI", "REG_SZ"
    shell.RegWrite "HKCU\Software\MiniAVI\Capabilities\ApplicationDescription", _
                   "Compact AVI player by Paul A. Gagniuc", "REG_SZ"
    shell.RegWrite "HKCU\Software\MiniAVI\Capabilities\FileAssociations\.avi", _
                   progId, "REG_SZ"
    shell.RegWrite "HKCU\Software\RegisteredApplications\Mini AVI", _
                   "Software\MiniAVI\Capabilities", "REG_SZ"

    SHChangeNotify SHCNE_ASSOCCHANGED, SHCNF_IDLIST, 0, 0
    Set shell = Nothing
End Sub

Public Sub HookMovieWindow()
    Dim hMovie As Long
    Dim oldProc As Long

    UnhookMovieWindow

    hMovie = GetMovieWindowHandle()
    If hMovie = 0 Then Exit Sub
    If IsWindow(hMovie) = 0 Then Exit Sub

    oldProc = SetWindowLongMovie(hMovie, GWL_WNDPROC_MOVIE, AddressOf MovieWindowProc)
    If oldProc <> 0 Then
        gMovieWindow = hMovie
        gMovieOldWndProc = oldProc
    End If
End Sub

Public Sub UnhookMovieWindow()
    On Error Resume Next

    If gMovieWindow <> 0 And gMovieOldWndProc <> 0 Then
        If IsWindow(gMovieWindow) <> 0 Then
            SetWindowLongMovie gMovieWindow, GWL_WNDPROC_MOVIE, gMovieOldWndProc
        End If
    End If

    gMovieWindow = 0
    gMovieOldWndProc = 0
End Sub

Public Function MovieWindowProc(ByVal hWnd As Long, ByVal uMsg As Long, _
                                ByVal wParam As Long, ByVal lParam As Long) As Long
    If uMsg = WM_LBUTTONUP Then
        On Error Resume Next
        MiniAVI.TogglePlaybackFromMovie
    End If

    If gMovieOldWndProc <> 0 Then
        MovieWindowProc = CallWindowProcMovie(gMovieOldWndProc, hWnd, uMsg, wParam, lParam)
    Else
        MovieWindowProc = 0
    End If
End Function
