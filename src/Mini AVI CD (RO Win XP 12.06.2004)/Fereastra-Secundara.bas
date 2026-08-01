Attribute VB_Name = "ScreensaverOffOn"
Option Explicit

Global Const SWP_NOMOVE = 2
Global Const SWP_NOSIZE = 1
Global Const FLAGS = SWP_NOMOVE Or SWP_NOSIZE
Global Const HWND_TOPMOST = -1
Global Const HWND_NOTOPMOST = -2
Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
    Global Const conHwndTopmost = -1
    Global Const conSwpNoActivate = &H10
    Global Const conSwpShowWindow = &H40

Public Declare Function ReleaseCapture Lib "user32" () As Long
Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Public Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long
Public Declare Function SetCursorPos Lib "user32" (ByVal X As Long, ByVal Y As Long) As Long
Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Public Declare Function StretchBlt Lib "gdi32" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal nSrcWidth As Long, ByVal nSrcHeight As Long, ByVal dwRop As Long) As Long
Public Declare Function SetCursor Lib "user32" (ByVal hCursor As Long) As Long
Public Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Public Const WM_NCLBUTTONDOWN = &HA1
Public Const HTCAPTION = 2
Public ratio As Double
Public justloaded As Boolean
Public mhour As String, mmin As String, msec As String
Public chour As String, cmin As String, csec As String
Public shour As String, smin As String, ssec As String
Type POINTAPI
        mx As Long
        my As Long
End Type
Public check As String
Global PlaybackSpeed As Integer
Public frame As Double
Public startshow, stopshow As Double
Public subnr As Long
Public subtext As String
Public looking As Boolean
Public TxtAligned As Boolean
Public toggled As Boolean
Public subtitling As Boolean





Public Const SPI_SETSCREENSAVEACTIVE = 17
Public Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" _
                                (ByVal uAction As Long, ByVal uParam As Long, _
                                ByVal lpvParam As Long, ByVal fuWinIni As Long) As Long

Public Sub ScreenSaverActive(Active As Boolean)
Dim Enabled As Long
Dim ret As Long

Enabled = IIf(Active, 1, 0)
ret = SystemParametersInfo(SPI_SETSCREENSAVEACTIVE, Enabled, 0, 0)
End Sub


