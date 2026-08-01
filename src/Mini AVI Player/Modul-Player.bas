Attribute VB_Name = "ModMedia"
Option Explicit

Public MediaPath As String          'Full unquoted path to the current media file
Public MediaHeight As Long          'The media height in pixels
Public MediaWidth As Long           'The media width in pixels
Public MediaLengthMS As Long        'The duration of the media in milliseconds
Public MediaLengthFrames As Long    'The media total number of frames
Public ApasatButoane As Boolean     'True after a media file has been opened
Public intSize As Integer           'Percentage used to resize the movie window
Public RunTime As Long              'Current media position
Public blnPause As Boolean          'True while media is playing
Public Fullscreen As Boolean        'Fullscreen/windowed playback flag
Public MediaVolume As Integer       'Percentage of full volume

Public Const MediaAlias As String = "MiniAVIMedia"

Private Type MCI_DGV_STATUS_PARMS
    dwCallback As Long
    dwReturn As Long
    dwItem As Long
    dwTrack As Long
    lpstrDrive As Long
    dwReference As Long
End Type

Private Const MCI_STATUS As Long = &H814
Private Const MCI_STATUS_ITEM As Long = &H100
Private Const MCI_DGV_STATUS_HWND As Long = &H4001

Public Declare Function mciSendString Lib "winmm.dll" Alias _
        "mciSendStringA" (ByVal lpstrCommand As String, ByVal _
        lpstrReturnString As Any, ByVal uReturnLength As Long, ByVal _
        hwndCallback As Long) As Long

Private Declare Function mciGetDeviceID Lib "winmm.dll" Alias "mciGetDeviceIDA" _
        (ByVal lpstrName As String) As Long

Private Declare Function mciSendCommand Lib "winmm.dll" Alias "mciSendCommandA" _
        (ByVal wDeviceID As Long, ByVal uMsg As Long, ByVal fdwCommand As Long, _
         ByRef dwParam As Any) As Long

Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" _
        (ByVal hwnd As Long, ByVal wMsg As Long, _
        ByVal wParam As Integer, ByVal lParam As Long) As Long

Public Declare Function mciGetErrorString Lib "winmm.dll" Alias _
        "mciGetErrorStringA" (ByVal dwError As Long, ByVal lpstrBuffer As String, _
        ByVal uLength As Long) As Long

Public Function MciErrorText(ByVal dwError As Long) As String
    Dim buf As String
    Dim nullPos As Long

    If dwError = 0 Then
        MciErrorText = "(no error)"
        Exit Function
    End If

    buf = String$(256, vbNullChar)
    Call mciGetErrorString(dwError, buf, Len(buf))
    nullPos = InStr(buf, vbNullChar)
    If nullPos > 0 Then
        MciErrorText = Left$(buf, nullPos - 1)
    Else
        MciErrorText = buf
    End If
End Function

Public Function OpenMedia() As Long
    Dim cmdStr As String
    Dim ret As Long
    Dim escapedPath As String

    On Error Resume Next
    Call mciSendString("close " & MediaAlias, 0&, 0&, 0&)

    escapedPath = Replace(MediaPath, Chr$(34), Chr$(34) & Chr$(34))
    cmdStr = "open " & Chr$(34) & escapedPath & Chr$(34) & _
             " type MPEGVideo alias " & MediaAlias
    ret = mciSendString(cmdStr, 0&, 0&, 0&)

    Debug.Print "[OpenMedia] cmd=" & cmdStr
    Debug.Print "[OpenMedia] ret=" & ret & "  -> " & MciErrorText(ret)
    OpenMedia = ret
End Function

Public Sub PlayMedia()
    Dim ret As Long

    MiniAVI.MicroEcran.Picture = MiniAVI.MicroEcranPlay.Picture
    MiniAVI.Stinge_Aprinde_Lampi.Enabled = True

    If Fullscreen Then
        ret = mciSendString("play " & MediaAlias & " fullscreen", 0&, 0&, 0&)
    Else
        ret = mciSendString("play " & MediaAlias, 0&, 0&, 0&)
    End If

    If ret = 0 Then
        ApasatButoane = True
        blnPause = True
    End If
End Sub

Public Sub PauseMedia()
    Dim ret As Long

    MiniAVI.MicroEcran.Picture = MiniAVI.MicroEcranPauza.Picture
    MiniAVI.Stinge_Aprinde_Lampi.Enabled = False
    ret = mciSendString("pause " & MediaAlias, 0&, 0&, 0&)
    If ret = 0 Then blnPause = False
End Sub

Public Sub StopMedia()
    Dim ret As Long

    MiniAVI.MicroEcran.Picture = MiniAVI.MicroEcranStop.Picture
    ret = mciSendString("stop " & MediaAlias, 0&, 0&, 0&)
    If ret = 0 Then blnPause = False
End Sub

Public Sub CloseMedia()
    Dim ret As Long

    UnhookMovieWindow
    ret = mciSendString("close " & MediaAlias, 0&, 0&, 0&)
    ApasatButoane = False
    blnPause = False
End Sub

Public Function GetMovieWindowHandle() As Long
    Dim deviceId As Long
    Dim statusInfo As MCI_DGV_STATUS_PARMS
    Dim ret As Long

    deviceId = mciGetDeviceID(MediaAlias)
    If deviceId = 0 Then Exit Function

    statusInfo.dwItem = MCI_DGV_STATUS_HWND
    ret = mciSendCommand(deviceId, MCI_STATUS, MCI_STATUS_ITEM, statusInfo)
    If ret = 0 Then GetMovieWindowHandle = statusInfo.dwReturn
End Function

Public Function GetMediaMode() As String
    Dim ret As Long
    Dim modeText As String
    Dim nullPos As Long

    modeText = String$(32, vbNullChar)
    ret = mciSendString("status " & MediaAlias & " mode", modeText, Len(modeText), 0&)
    If ret <> 0 Then Exit Function

    nullPos = InStr(modeText, vbNullChar)
    If nullPos > 0 Then modeText = Left$(modeText, nullPos - 1)
    GetMediaMode = LCase$(Trim$(modeText))
End Function

Public Function IsMediaPlaying() As Boolean
    IsMediaPlaying = (GetMediaMode() = "playing")
End Function

Public Sub GetSize()
    Dim ret As Long
    Dim size As String * 128
    Dim var() As String

    ret = mciSendString("where " & MediaAlias & " destination", size, 128, 0&)
    Debug.Print "[GetSize] ret=" & ret & "  -> " & MciErrorText(ret)

    If ret <> 0 Then
        MediaWidth = 320
        MediaHeight = 240
        Exit Sub
    End If

    var = Split(Trim$(size), " ", -1)
    If UBound(var) >= 3 Then
        MediaWidth = CLng(Val(var(2)))
        MediaHeight = CLng(Val(var(3)))
    Else
        MediaWidth = 320
        MediaHeight = 240
    End If
End Sub

Public Sub ResizeMovie(Optional Multiplie As Currency)
    Dim ret As Long
    Dim displayWidth As Long
    Dim displayHeight As Long

    On Error Resume Next

    If Multiplie <> 0 Then
        displayWidth = CLng(MediaWidth * (Multiplie / 100))
        displayHeight = CLng(MediaHeight * (Multiplie / 100))
    Else
        displayWidth = MediaWidth
        displayHeight = MediaHeight
    End If

    ret = mciSendString("put " & MediaAlias & " window at 0 0 " & _
                        displayWidth & " " & displayHeight, 0&, 0&, 0&)
End Sub

Public Function GetCurrentMediaPos() As Long
    Dim ret As Long
    Dim pos As String * 128

    ret = mciSendString("set " & MediaAlias & " time format ms", pos, 128, 0&)
    ret = mciSendString("status " & MediaAlias & " position", pos, 128, 0&)

    If ret <> 0 Then
        GetCurrentMediaPos = -1
        Exit Function
    End If

    GetCurrentMediaPos = Val(pos)
End Function

Public Sub MoveMedia(Where As Long)
    Dim ret As Long
    Dim pos As String * 128

    ApasatButoane = True
    ret = mciSendString("set " & MediaAlias & " time format ms", pos, 128, 0&)
    ret = mciSendString("seek " & MediaAlias & " to " & Where, 0&, 0&, 0&)
    ret = mciSendString("play " & MediaAlias, 0&, 0&, 0&)
    If ret = 0 Then blnPause = True
End Sub

Public Function MediaDuration() As String
    Dim ret As Long
    Dim totalTime As String * 128

    ret = mciSendString("set " & MediaAlias & " time format frames", 0&, 0&, 0&)
    ret = mciSendString("status " & MediaAlias & " length", totalTime, 128, 0&)
    MediaLengthFrames = Val(totalTime)

    ret = mciSendString("set " & MediaAlias & " time format ms", totalTime, 128, 0&)
    ret = mciSendString("status " & MediaAlias & " length", totalTime, 128, 0&)

    MediaLengthMS = Val(totalTime)
    MediaDuration = FormatCount(Val(totalTime))
End Function

Public Function FormatCount(Count As Long) As String
    Dim Days As Integer
    Dim Hours As Long
    Dim Minutes As Long
    Dim Seconds As Long

    Count = Count \ 1000
    Days = Count \ (24& * 3600&)
    If Days > 0 Then Count = Count - (24& * 3600& * Days)
    Hours = Count \ 3600&
    If Hours > 0 Then Count = Count - (3600& * Hours)
    Minutes = Count \ 60
    Seconds = Count Mod 60

    FormatCount = Hours & ":" & Minutes & ":" & Seconds
End Function

Public Sub SetVolume(Volume As Long)
    Dim cmdStr As String
    Dim ret As Long

    cmdStr = "setaudio " & MediaAlias & " volume to " & (Volume * 10)
    ret = mciSendString(cmdStr, 0&, 0&, 0&)
End Sub
