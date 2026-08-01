VERSION 5.00
Begin VB.Form MiniAVI 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   0  'None
   Caption         =   "Mobius"
   ClientHeight    =   1725
   ClientLeft      =   0
   ClientTop       =   195
   ClientWidth     =   4125
   Icon            =   "Fereastra-Centrala.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "Fereastra-Centrala.frx":2982
   ScaleHeight     =   1725
   ScaleWidth      =   4125
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   3600
      Top             =   3240
   End
   Begin VB.PictureBox SunetZero4 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   645
      Left            =   2400
      Picture         =   "Fereastra-Centrala.frx":AAD4
      ScaleHeight     =   43
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   25
      TabIndex        =   21
      ToolTipText     =   "Adjust volume"
      Top             =   2880
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox SunetZero3 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   645
      Left            =   2040
      Picture         =   "Fereastra-Centrala.frx":B7DA
      ScaleHeight     =   43
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   25
      TabIndex        =   20
      ToolTipText     =   "Adjust volume"
      Top             =   2880
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox SunetZero2 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   645
      Left            =   1680
      Picture         =   "Fereastra-Centrala.frx":C4E0
      ScaleHeight     =   43
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   25
      TabIndex        =   19
      ToolTipText     =   "Adjust volume"
      Top             =   2880
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox SunetZero1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   645
      Left            =   1320
      Picture         =   "Fereastra-Centrala.frx":D1E6
      ScaleHeight     =   43
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   25
      TabIndex        =   18
      ToolTipText     =   "Adjust volume"
      Top             =   2880
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox Misca0 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   105
      Left            =   240
      Picture         =   "Fereastra-Centrala.frx":DEEC
      ScaleHeight     =   7
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   28
      TabIndex        =   8
      Top             =   1080
      Width           =   420
   End
   Begin VB.PictureBox picSeek 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   45
      Left            =   240
      Picture         =   "Fereastra-Centrala.frx":E17A
      ScaleHeight     =   45
      ScaleWidth      =   3705
      TabIndex        =   7
      Top             =   1080
      Width           =   3705
   End
   Begin VB.PictureBox volorig 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   645
      Left            =   2280
      Picture         =   "Fereastra-Centrala.frx":EA74
      ScaleHeight     =   43
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   25
      TabIndex        =   6
      ToolTipText     =   "Adjust volume"
      Top             =   1800
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox voldisp 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H003EB6DE&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   645
      Left            =   320
      Picture         =   "Fereastra-Centrala.frx":F77A
      ScaleHeight     =   43
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   25
      TabIndex        =   5
      ToolTipText     =   "Adjust volume"
      Top             =   335
      Width           =   380
      Begin VB.Image StopSunet 
         Height          =   255
         Left            =   240
         ToolTipText     =   "Sound on/off (Mute)"
         Top             =   360
         Width           =   135
      End
   End
   Begin VB.Timer Stinge_Aprinde_Lampi 
      Interval        =   100
      Left            =   3600
      Top             =   2520
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   3000
      Top             =   2520
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00404040&
      X1              =   0
      X2              =   4320
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Image LEDSub0 
      Height          =   135
      Left            =   1440
      Picture         =   "Fereastra-Centrala.frx":10480
      Top             =   360
      Width           =   255
   End
   Begin VB.Image LEDSub2 
      Height          =   135
      Left            =   3000
      Picture         =   "Fereastra-Centrala.frx":10696
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Image LEDSub1 
      Height          =   135
      Left            =   3000
      Picture         =   "Fereastra-Centrala.frx":108AC
      Top             =   3240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Image NivelDaNu 
      Height          =   135
      Left            =   1200
      Picture         =   "Fereastra-Centrala.frx":10AC2
      Top             =   360
      Width           =   105
   End
   Begin VB.Image NivelDaNu1 
      Height          =   135
      Left            =   2760
      Picture         =   "Fereastra-Centrala.frx":10BDC
      Top             =   1800
      Visible         =   0   'False
      Width           =   105
   End
   Begin VB.Image NivelDaNu2 
      Height          =   135
      Left            =   2760
      Picture         =   "Fereastra-Centrala.frx":10CF6
      Top             =   2040
      Visible         =   0   'False
      Width           =   105
   End
   Begin VB.Image MicroEcran 
      Height          =   135
      Left            =   720
      Picture         =   "Fereastra-Centrala.frx":10E10
      Top             =   360
      Width           =   375
   End
   Begin VB.Image MicroEcranStop 
      Height          =   135
      Left            =   3840
      Picture         =   "Fereastra-Centrala.frx":110FE
      Top             =   3000
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Image MicroEcranPauza 
      Height          =   135
      Left            =   3360
      Picture         =   "Fereastra-Centrala.frx":113EC
      Top             =   3000
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Image MicroEcranPlay 
      Height          =   135
      Left            =   2880
      Picture         =   "Fereastra-Centrala.frx":116DA
      Top             =   3000
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label TitluFilm 
      BackStyle       =   0  'Transparent
      Caption         =   "Movie title"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   195
      Left            =   720
      TabIndex        =   17
      Top             =   540
      Width           =   1455
   End
   Begin VB.Image EcranMare 
      Height          =   180
      Left            =   1080
      Picture         =   "Fereastra-Centrala.frx":119C8
      Top             =   2040
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image EcranMic 
      Height          =   180
      Left            =   1080
      Picture         =   "Fereastra-Centrala.frx":1245A
      Top             =   1800
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label MarireEcran 
      BackStyle       =   0  'Transparent
      Caption         =   "FS"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   195
      Left            =   2640
      TabIndex        =   16
      ToolTipText     =   "Full screen (enlarge)"
      Top             =   855
      Width           =   1335
   End
   Begin VB.Label TimpScurs 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   1080
      TabIndex        =   15
      Top             =   2640
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label EUSimulatorDVD 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Mini AVI [beta-V1.0]"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   1320
      TabIndex        =   14
      Top             =   30
      Width           =   1695
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Current time - "
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   195
      Left            =   2280
      TabIndex        =   13
      Top             =   600
      Width           =   975
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Movie duration -"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   195
      Left            =   2280
      TabIndex        =   12
      Top             =   360
      Width           =   975
   End
   Begin VB.Image Image2 
      Height          =   150
      Left            =   2160
      Picture         =   "Fereastra-Centrala.frx":12EEC
      Top             =   1320
      Width           =   795
   End
   Begin VB.Image Ecran0 
      Height          =   180
      Left            =   2880
      Picture         =   "Fereastra-Centrala.frx":1356E
      Top             =   840
      Width           =   1095
   End
   Begin VB.Image misca2 
      Height          =   105
      Left            =   1680
      Picture         =   "Fereastra-Centrala.frx":14000
      Top             =   2280
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.Image misca1 
      Height          =   105
      Left            =   1080
      Picture         =   "Fereastra-Centrala.frx":1428E
      Top             =   2280
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.Label NivelVolumDisplay 
      BackStyle       =   0  'Transparent
      Caption         =   "80 %"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   1100
      TabIndex        =   11
      Top             =   765
      Width           =   375
   End
   Begin VB.Label SectiuniAVI 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   1680
      TabIndex        =   10
      Top             =   2520
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label NivelVolum 
      BackStyle       =   0  'Transparent
      Caption         =   "100"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   1080
      TabIndex        =   9
      Top             =   2400
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Image Despre2 
      Height          =   270
      Left            =   3720
      Picture         =   "Fereastra-Centrala.frx":1451C
      Top             =   2160
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.Image Ajutor2 
      Height          =   270
      Left            =   3360
      Picture         =   "Fereastra-Centrala.frx":14A26
      Top             =   2160
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.Image Deschide2 
      Height          =   270
      Left            =   3000
      Picture         =   "Fereastra-Centrala.frx":14F30
      Top             =   2160
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.Image Lampa0 
      Height          =   135
      Left            =   0
      Picture         =   "Fereastra-Centrala.frx":1543A
      Top             =   0
      Width           =   1125
   End
   Begin VB.Image Lampa2 
      Height          =   150
      Left            =   120
      Picture         =   "Fereastra-Centrala.frx":15C80
      Top             =   3360
      Visible         =   0   'False
      Width           =   1140
   End
   Begin VB.Image Lampa1 
      Height          =   135
      Left            =   120
      Picture         =   "Fereastra-Centrala.frx":165AA
      Top             =   3120
      Visible         =   0   'False
      Width           =   1125
   End
   Begin VB.Image Mic0 
      Height          =   165
      Left            =   120
      Picture         =   "Fereastra-Centrala.frx":16DF0
      Top             =   1800
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Image Mic4 
      Height          =   165
      Left            =   120
      Picture         =   "Fereastra-Centrala.frx":1761A
      Top             =   2760
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Image Mic3 
      Height          =   165
      Left            =   120
      Picture         =   "Fereastra-Centrala.frx":17E44
      Top             =   2520
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Image Mic2 
      Height          =   165
      Left            =   120
      Picture         =   "Fereastra-Centrala.frx":1866E
      Top             =   2280
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Image Mic1 
      Height          =   165
      Left            =   120
      Picture         =   "Fereastra-Centrala.frx":18E98
      Top             =   2040
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Image Deschide 
      Height          =   135
      Left            =   2280
      ToolTipText     =   "Open ..."
      Top             =   840
      Width           =   135
   End
   Begin VB.Image Stop 
      Height          =   135
      Left            =   2160
      ToolTipText     =   "Stop"
      Top             =   840
      Width           =   135
   End
   Begin VB.Image Pauza 
      Height          =   135
      Left            =   2040
      ToolTipText     =   "Pause"
      Top             =   840
      Width           =   135
   End
   Begin VB.Image Play 
      Height          =   135
      Left            =   1800
      ToolTipText     =   "Play"
      Top             =   840
      Width           =   255
   End
   Begin VB.Image MicsorareMarire 
      Height          =   270
      Index           =   0
      Left            =   1320
      Picture         =   "Fereastra-Centrala.frx":196C2
      ToolTipText     =   "Zoom in"
      Top             =   1320
      Width           =   330
   End
   Begin VB.Image MicsorareMarire 
      Height          =   270
      Index           =   1
      Left            =   960
      Picture         =   "Fereastra-Centrala.frx":19BCC
      ToolTipText     =   "Zoom out"
      Top             =   1320
      Width           =   330
   End
   Begin VB.Image Despre1 
      Height          =   270
      Left            =   3720
      Picture         =   "Fereastra-Centrala.frx":1A0D6
      Top             =   1800
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.Image Despre0 
      Height          =   270
      Left            =   3720
      Picture         =   "Fereastra-Centrala.frx":1A5E0
      ToolTipText     =   "About ..."
      Top             =   1320
      Width           =   330
   End
   Begin VB.Image Ajutor1 
      Height          =   270
      Left            =   3360
      Picture         =   "Fereastra-Centrala.frx":1AAEA
      Top             =   1800
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.Image Ajutor0 
      Height          =   270
      Left            =   3360
      Picture         =   "Fereastra-Centrala.frx":1AFF4
      ToolTipText     =   "Help"
      Top             =   1320
      Width           =   330
   End
   Begin VB.Image Deschide1 
      Height          =   270
      Left            =   3000
      Picture         =   "Fereastra-Centrala.frx":1B4FE
      Top             =   1800
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.Image Deschide0 
      Height          =   270
      Left            =   3000
      Picture         =   "Fereastra-Centrala.frx":1BA08
      ToolTipText     =   "Open"
      Top             =   1320
      Width           =   330
   End
   Begin VB.Image ButoaneMicro 
      Height          =   165
      Left            =   1680
      Picture         =   "Fereastra-Centrala.frx":1BF12
      Top             =   840
      Width           =   915
   End
   Begin VB.Image Iesire 
      Height          =   135
      Left            =   3960
      Picture         =   "Fereastra-Centrala.frx":1C73C
      Top             =   40
      Width           =   120
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Size"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   1320
      Width           =   795
   End
   Begin VB.Label DurataFilmului 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "0:00:00"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   3285
      TabIndex        =   3
      Top             =   360
      Width           =   615
   End
   Begin VB.Label TimpulCurent 
      BackStyle       =   0  'Transparent
      Caption         =   "0:00:00"
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   3360
      TabIndex        =   2
      Top             =   600
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Vol -"
      ForeColor       =   &H00008000&
      Height          =   195
      Left            =   720
      TabIndex        =   1
      Top             =   765
      Width           =   435
   End
   Begin VB.Label lblSize 
      BackStyle       =   0  'Transparent
      Caption         =   "100 %"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   255
      Left            =   1680
      TabIndex        =   0
      Top             =   1320
      Width           =   435
   End
End
Attribute VB_Name = "MiniAVI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*********************************Info mini AVI***************************************'
'* play .avi, .asf, .mpg, .mpeg, .wmv                                       *'
'****************************************************************************'

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()
Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2


Public playing As Boolean, t As Long, volchange As Boolean, Volume As Integer, currentpos As Long
Public down As Boolean
Public vol As Variant


Private CD As CommonDialog


Dim DragNowa As Boolean
Public ValoareBara As Variant
Public LungimeAVI As Variant
Public Paul As Variant
Public tm, tt, tp, offset, RunTime As Variant
Public FisierSubtitrare As String
Public Calea_Spre_Lumina As String
Public TOT_Subtitrare As String

Dim ContuarSec2, ContuarSec1, Secunde As Variant
Dim Sub1, Sub2 As Variant
Dim TextSub As String


Dim O_pula As Boolean
Dim VolumZero As Variant

Private Sub EUSimulatorDVD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim lngReturnValue As Long
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(MiniAVI.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub MarireEcran_Click()
'If ApasatButoane Then

If Paul = 1 Then
Ecran0.Picture = EcranMare.Picture
    Paul = 0
    Fullscreen = True
'    PlayMedia
Else
Ecran0.Picture = EcranMic.Picture
    Paul = 1
    Fullscreen = False
'   PlayMedia
End If

'End If
End Sub

Private Sub Misca0_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If ApasatButoane Then
DragNowa = True
Txa = X
Timer1.Enabled = False
End If
Misca0.Picture = misca2.Picture
End Sub

Private Sub Misca0_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
  If ApasatButoane Then
    If DragNowa Then
        NewLeft = Misca0.Left + X - Txa '+ Misca0.Width '- (X - Misca0.Left)
        If NewLeft < picSeek.Left + 3 Then
            NewLeft = picSeek.Left + 3
        End If
        If NewLeft > picSeek.Width + picSeek.Left - 7 - Misca0.Width Then
            NewLeft = picSeek.Width + picSeek.Left - 7 - Misca0.Width
        End If
        Misca0.Left = NewLeft '+ X - Misca0.Width '+ (Misca0.Left / 2)
    End If
    End If
End Sub

Private Sub Misca0_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

If ApasatButoane Then
    
 Timer1.Enabled = True ' mouse up
 
    Dim offseti As Single
    DragNowa = False
    offseti = (Misca0.Left - picSeek.Left - 3) / (picSeek.Width - 10 - Misca0.Width)
   ValoareBara = Int(LungimeAVI * offseti)
   

SectiuniAVI.Caption = ValoareBara
Call MoveMedia(SectiuniAVI.Caption)

End If
Misca0.Picture = misca1.Picture
End Sub


Private Sub Ajutor0_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Ajutor0.Picture = Ajutor1.Picture
End Sub

Private Sub Ajutor0_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Ajutor0.Picture = Ajutor2.Picture
End Sub

Private Sub Deschide0_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Deschide0.Picture = Deschide1.Picture
End Sub

Private Sub Deschide0_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Deschide0.Picture = Deschide2.Picture
End Sub

Private Sub Despre0_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Despre0.Picture = Despre1.Picture
End Sub

Private Sub Despre0_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Despre0.Picture = Despre2.Picture
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim lngReturnValue As Long

ButoaneMicro.Picture = Mic0.Picture

If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(MiniAVI.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub StopSunet_Click()
If VolumZero = 1 Then
VolumZero = 0
voldisp.Picture = SunetZero1.Picture
volorig.Picture = SunetZero2.Picture
NivelVolum.Caption = MediaVolume 'tine minte vechiul volum
NivelVolumDisplay.Caption = MediaVolume & " %"
Call SetVolume(NivelVolum.Caption)

NivelDaNu.Picture = NivelDaNu2.Picture

voldisp.Cls
PaulGrilaj = 43 - Int(MediaVolume * (43 / 100)) 'Mid(NivelVolum.Caption, 1, 1)
Call BitBlt(voldisp.hDC, 0, PaulGrilaj, 25, 43, volorig.hDC, 0, PaulGrilaj, vbSrcCopy)
Else
VolumZero = 1
voldisp.Picture = SunetZero3.Picture
volorig.Picture = SunetZero4.Picture

NivelVolumDisplay.Caption = "0 %"
NivelVolum.Caption = 0
Call SetVolume(NivelVolum.Caption)

NivelDaNu.Picture = NivelDaNu1.Picture

End If
End Sub



Private Sub Timer2_Timer()
Timer2.Enabled = False

PlayMedia


'Intro.PaulGagniuc.Caption = "NU"

'MiniAVI.Visible = False
End Sub

Private Sub voldisp_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
volchange = True
voldisp.Cls
Call BitBlt(voldisp.hDC, 0, Y, 25, 43, volorig.hDC, 0, Y, vbSrcCopy)
End Sub

Private Sub voldisp_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If volchange = True Then
If Y < 0 Then Y = 0
If Y > 43 Then Y = 43
voldisp.Cls
Call BitBlt(voldisp.hDC, 0, Y, 25, 43, volorig.hDC, 0, Y, vbSrcCopy)
voltemp = Int(Y * 2.33)
vol = 100 - voltemp
NivelVolum.Caption = vol
Call SetVolume(NivelVolum.Caption)
MediaVolume = NivelVolum.Caption
NivelVolumDisplay.Caption = vol & " %"

End If
End Sub

Private Sub voldisp_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
volchange = False
End Sub




Private Sub Ajutor0_Click()
Ajutor.Show
End Sub

Private Sub Deschide_Click()
Dim ret As Long
Dim tmp As String

Timer2.Enabled = False

If ApasatButoane Then
Clear
CloseMedia
End If


intSize = 100
lblSize.Caption = intSize & " %"

If Intro.PaulGagniuc.Caption = "DA" Then

tmp444 = Intro.CF.Caption & Intro.NF.Caption
tmp = tmp444
Intro.PaulGagniuc.Caption = "NU"
'GoTo 444

Else

CD.ShowOpen
tmp = CD.FileName

Paul = 0 'pentru ca sa porneasca in mini screen
MarireEcran_Click ' schimba in mini screen ...
End If


'MsgBox "Am ajuns"

'444:
Intro.PaulGagniuc.Caption = "NUbv"
'MsgBox "tmp - " & tmp
If tmp <> "" Then



MediaPath = """" & tmp & """"
ret = OpenMedia
If ret = 0 Then

'MsgBox tmp

Call GetSize



DurataFilmului.Caption = Format(MediaDuration, "h:mm:ss")
LungimeAVI = MediaLengthMS
ResizeMovie
Call SetVolume(NivelVolum.Caption)

TitluFilm.Caption = CD.FileTitle
FisierSubtitrare = CD.FileTitle
Calea_Spre_Lumina = tmp


If O_pula = True Then ErrLaSubtitrare
'pun subtitrarea inaintea inceperii AVI ...

PlayMedia

Timer1.Enabled = True

Else
MsgBox "The video file that MiniAVI is supposed to open does not exist! Delete the MiniAVI.khz file!.", vbCritical
End If
End If
ExtractSubtitrare
Umplere_Variabila

End Sub

Function ExtractSubtitrare()
On Error GoTo 666
FisierSubtitrare = StrReverse(FisierSubtitrare)
Caracter = InStr(FisierSubtitrare, ".") + 1
FisierSubtitrare = Mid(FisierSubtitrare, Caracter, Len(FisierSubtitrare))
FisierSubtitrare = StrReverse(FisierSubtitrare) & ".sub"

Calea_Spre_Lumina = StrReverse(Calea_Spre_Lumina)
Caracter1 = InStr(Calea_Spre_Lumina, "\")
Calea_Spre_Lumina = Mid(Calea_Spre_Lumina, Caracter1, Len(Calea_Spre_Lumina))
Calea_Spre_Lumina = StrReverse(Calea_Spre_Lumina)


Text1.Text = Calea_Spre_Lumina & FisierSubtitrare
Exit Function
666:
O_pula = True
End Function


Private Sub Deschide_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ButoaneMicro.Picture = Mic4.Picture
End Sub

Private Sub Deschide0_Click()
MiniAVI.Stinge_Aprinde_Lampi.Enabled = False
Intro.PaulGagniuc.Caption = "NUbv"
StopMedia

Deschide_Click
End Sub

Private Sub Despre0_Click()
DespreYO.Show
End Sub

Private Sub Form_Load()
Dim ret As Long

intSize = 100
O_pula = False
VolumZero = 0 'semi boolean
MediaVolume = 80
voldisp.Cls
'8 este y si e intre 1 si 10
Call BitBlt(voldisp.hDC, 0, 8, 25, 43, volorig.hDC, 0, 8, vbSrcCopy)

Paul = 1

Set CD = New CommonDialog
CD.Filter = "Fisiere suportate|*.avi;*.asf;*.mpg;*.mpeg;*.wmv|DivX File (*.avi)|*.avi"
CD.DialogTitle = "Alegeti fisierul pe care vrei sa-l vezi !"

Stinge_Aprinde_Lampi.Enabled = False


Call ScreenSaverActive(False)

ret = RegisterHotKey(Me.hWnd, 0, MOD_CTRL, VK_ADD)
ret = RegisterHotKey(Me.hWnd, 1, MOD_CTRL, VK_SUBTRACT)
ret = RegisterHotKey(Me.hWnd, 2, MOD_CTRL, VK_F7)
ret = RegisterHotKey(Me.hWnd, 3, MOD_CTRL, VK_F5)
ret = RegisterHotKey(Me.hWnd, 4, MOD_CTRL, VK_F6)
ret = RegisterHotKey(Me.hWnd, 5, MOD_CTRL, VK_DOWN)
ret = RegisterHotKey(Me.hWnd, 6, MOD_CTRL, VK_UP)

glWinRet = SetWindowLong(Me.hWnd, GWL_WNDPROC, AddressOf CallbackMsgs)

If Command <> "" Then
    MiniAVI.Show
    lblSize.Caption = intSize & " %"
    MediaPath = """" & Command & """"
    ret = OpenMedia
    If ret = 0 Then
        Call GetSize
        DurataFilmului.Caption = Format(MediaDuration, "h:mm:ss")
        LungimeAVI = MediaLengthMS
        ResizeMovie
        Call SetVolume(NivelVolum.Caption)
        PlayMedia
        Timer1.Enabled = True

    Else
        MsgBox "The file cannot be played!", vbCritical
    End If
End If

If Intro.PaulGagniuc.Caption = "DA" Then

If Intro.FS.Caption = "Marit" Then
'Paul = 1
Deschide_Click

Call MoveMedia(2)
Call PauseMedia

MarireEcran_Click
Timer2.Enabled = True

Intro.PaulGagniuc.Caption = "NU"
Else

Deschide_Click

End If

End If
Intro.PaulGagniuc.Caption = "NU"

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Dim I As Integer
CloseMedia
Unload DespreYO

Call ScreenSaverActive(True)

For I = 0 To 6
    UnregisterHotKey Me.hWnd, I
Next
End Sub

Private Sub Iesire_Click()
Timer1.Enabled = False
Unload DespreYO
Unload Ajutor
Unload Me
End Sub

Private Sub MicsorareMarire_Click(Index As Integer)
If ApasatButoane Then
    Select Case Index
        Case 0
            If intSize < 300 Then intSize = intSize + 25
        Case 1
            If intSize > 50 Then intSize = intSize - 25
    End Select
    If intSize = 100 Then
        Call ResizeMovie
    Else
        Call ResizeMovie(CCur(intSize))
    End If
    lblSize.Caption = intSize & " %"
End If
End Sub

Private Sub Pauza_Click()
If ApasatButoane Then
MicroEcran.Picture = MicroEcranPauza.Picture
PauseMedia
End If
End Sub

Private Sub Pauza_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ButoaneMicro.Picture = Mic2.Picture
End Sub

Private Sub Play_Click()
If ApasatButoane Then
Stinge_Aprinde_Lampi.Enabled = True
PlayMedia
MicroEcran.Picture = MicroEcranPlay.Picture
End If
End Sub

Private Sub Play_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ButoaneMicro.Picture = Mic1.Picture
End Sub

Private Sub Stinge_Aprinde_Lampi_Timer()
Dim Aprindere As Variant
Randomize
Stinge_Aprinde_Lampi.Interval = Int(100 * Rnd(100))
If Stinge_Aprinde_Lampi.Interval = 0 Then Stinge_Aprinde_Lampi.Interval = 500

Aprindere = Int(2 * Rnd(2))


If Aprindere = 1 Then
Lampa0.Picture = Lampa1.Picture
Else
Lampa0.Picture = Lampa2.Picture
End If
End Sub

Private Sub Stop_Click()
If ApasatButoane Then

Timer1.Enabled = False
TimpulCurent.Caption = "0:00:00"
ValoareBara = 0
Call MoveMedia(0)
Call PauseMedia

    tm = Int(ValoareBara)
    tt = Int(LungimeAVI)
    If tm <> -1 Then
        tp = tm / tt
        offset = Int((picSeek.Width - 10 - Misca0.Width) * tp)
        If Not DragNowa Then Misca0.Left = offset + picSeek.Left + 3
    End If

MicroEcran.Picture = MicroEcranStop.Picture
End If
End Sub

Private Sub Stop_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ButoaneMicro.Picture = Mic3.Picture
End Sub

Private Sub Timer1_Timer()
RunTime = GetCurrentMediaPos

If RunTime < MediaLengthMS Then
    ValoareBara = RunTime
    ' aici fac miscarea barii
    
    tm = Int(ValoareBara)
    tt = Int(LungimeAVI)
    If tm <> -1 Then
        tp = tm / tt
        offset = Int((picSeek.Width - 10 - Misca0.Width) * tp)
        If Not DragNowa Then Misca0.Left = offset + picSeek.Left + 3
    End If

    
    TimpScurs.Caption = ValoareBara
    TimpulCurent.Caption = Format(FormatCount(TimpScurs.Caption), "h:mm:ss")
'Label10.Caption = Format(FormatCount(TimpScurs.Caption), "hmmss")
Else
    Timer1.Enabled = False
    TimpulCurent.Caption = "0:00:00"
    ValoareBara = 0
    Call MoveMedia(0)
    Call PauseMedia

End If

End Sub
Private Sub Clear()
Timer1.Enabled = False
ValoareBara = 0
DurataFilmului.Caption = "0:00:00"
TimpulCurent.Caption = "0:00:00"
End Sub

Function Umplere_Variabila()
On Error GoTo 666
Open Calea_Spre_Lumina & FisierSubtitrare For Input As #1
Do While Not EOF(1)
Line Input #1, Linie_subtitrare
g = g & Linie_subtitrare & "[PAUL]"
Loop
Close #1

TOT_Subtitrare = g

g = Empty
Linie_subtitrare = Empty

'Text1.Text = TOT_Subtitrare
'ExtragereLinii
LEDSub0.Picture = LEDSub1.Picture
Exit Function
666:
ErrLaSubtitrare
O_pula = True
End Function


Function ExtragereLinii()
Dim MasterProces, Khazadum, Mesaj As String
MasterProces = TOT_Subtitrare

If MasterProces = "" Then Exit Function

Khazadum = InStr(MasterProces, "[PAUL]")
Mesaj = Mid(MasterProces, 1, Khazadum - 1)
MasterProces = Mid(MasterProces, InStr(MasterProces, "[PAUL]") + 6, Len(MasterProces))


TOT_Subtitrare = MasterProces

'MsgBox "Mesaj " & Mesaj
CrackVariabile (Mesaj)
If MasterProces = "" Then Exit Function

End Function


Function CrackVariabile(Ileana As String)
Dim MasterProces, Khazadum, Mesaj As String
MasterProces = Ileana
If MasterProces = "" Then Exit Function



For I = 1 To 3
'MsgBox "i - " & i
If I = 1 Then
MasterProces = Mid(MasterProces, 2, Len(MasterProces))
Khazadum = InStr(MasterProces, "}")
Mesaj = Mid(MasterProces, 1, Khazadum - 1)
MasterProces = Mid(MasterProces, InStr(MasterProces, "}") + 1, Len(MasterProces))
Sub1 = Mesaj
'MsgBox Sub1 & "[sub1]"
End If


If I = 2 Then
MasterProces = Mid(MasterProces, 2, Len(MasterProces))
Khazadum = InStr(MasterProces, "}")
Mesaj = Mid(MasterProces, 1, Khazadum - 1)
MasterProces = Mid(MasterProces, InStr(MasterProces, "}") + 1, Len(MasterProces))
Sub2 = Mesaj
'MsgBox Sub2 & "[sub2]"
End If


If I = 3 Then
TextSub = Replace(MasterProces, "|-", vbCrLf)
'MsgBox TextSub & "[TextSub]"
End If

'If MasterProces = "" Then Exit Function


Next I
'aici pun ledurile pentru subtitrare ...
End Function


Function ErrLaSubtitrare()
LEDSub0.Picture = LEDSub2.Picture
'aici pun ledurile pentru subtitrare ...
End Function
