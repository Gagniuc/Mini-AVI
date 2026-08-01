VERSION 5.00
Begin VB.Form CD_Start 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Mini AVI - CD Autostart [V-0.2]"
   ClientHeight    =   7695
   ClientLeft      =   0
   ClientTop       =   -105
   ClientWidth     =   9270
   Icon            =   "MiniAVI_AutoStart.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "MiniAVI_AutoStart.frx":08CA
   ScaleHeight     =   513
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   618
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer lasa_ne 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   120
      Top             =   6360
   End
   Begin VB.Timer Bara1_sacadat 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   120
      Top             =   6840
   End
   Begin VB.CommandButton jos_Eu 
      Caption         =   "_"
      Height          =   255
      Left            =   8520
      TabIndex        =   24
      Top             =   120
      Width           =   255
   End
   Begin VB.CommandButton Inchide 
      Caption         =   "X"
      Height          =   255
      Left            =   8880
      TabIndex        =   23
      Top             =   120
      Width           =   255
   End
   Begin VB.PictureBox Bara 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00004040&
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   840
      Picture         =   "MiniAVI_AutoStart.frx":128E
      ScaleHeight     =   23
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   255
      TabIndex        =   20
      Top             =   4440
      Width           =   3855
   End
   Begin VB.CommandButton despre_eu 
      BackColor       =   &H00E0E0E0&
      Height          =   855
      Left            =   8160
      Picture         =   "MiniAVI_AutoStart.frx":2205
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   6600
      Width           =   495
   End
   Begin VB.Timer Aratura_Muratura 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   4080
      Top             =   8400
   End
   Begin VB.PictureBox Bara_copiere 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00004040&
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   4680
      Picture         =   "MiniAVI_AutoStart.frx":260E
      ScaleHeight     =   23
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   255
      TabIndex        =   17
      Top             =   4920
      Width           =   3855
   End
   Begin VB.PictureBox Bara_indigo 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   120
      Picture         =   "MiniAVI_AutoStart.frx":3585
      ScaleHeight     =   23
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   255
      TabIndex        =   16
      Top             =   8400
      Visible         =   0   'False
      Width           =   3855
   End
   Begin VB.CommandButton Alege_directorul_Matrita 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Alege directorul ..."
      Height          =   255
      Left            =   840
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   3480
      Width           =   1815
   End
   Begin VB.CommandButton Ajutor 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Cum sa ..."
      Height          =   855
      Left            =   4440
      Picture         =   "MiniAVI_AutoStart.frx":44F4
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   6600
      Width           =   3615
   End
   Begin VB.TextBox Radacina 
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00400000&
      Height          =   285
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   10
      Text            =   "C:\Oglinda"
      Top             =   3480
      Width           =   5775
   End
   Begin VB.CommandButton Impachetare 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Impacheteaza imaginea !"
      Height          =   855
      Left            =   720
      Picture         =   "MiniAVI_AutoStart.frx":46A0
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   6600
      Width           =   3615
   End
   Begin VB.CheckBox Ecran 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Ecran Maxim (full Screen)"
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   960
      TabIndex        =   8
      Top             =   2640
      Value           =   1  'Checked
      Width           =   2415
   End
   Begin VB.TextBox Subtitrare 
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00400000&
      Height          =   285
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   2160
      Width           =   5415
   End
   Begin VB.TextBox AVI 
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00400000&
      Height          =   285
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   1680
      Width           =   5415
   End
   Begin VB.TextBox Iconita 
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00400000&
      Height          =   285
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   1200
      Width           =   5415
   End
   Begin VB.TextBox TitlulFilmului 
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00400000&
      Height          =   285
      Left            =   2520
      MaxLength       =   25
      TabIndex        =   0
      Top             =   720
      Width           =   5415
   End
   Begin VB.Shape Shape5 
      BorderColor     =   &H00FFFFFF&
      Height          =   7695
      Left            =   0
      Top             =   0
      Width           =   9270
   End
   Begin VB.Shape Shape4 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Height          =   7680
      Left            =   15
      Top             =   15
      Width           =   9255
   End
   Begin VB.Label Misca_forma 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Mini AVI - CD Autostart V0.2"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   720
      TabIndex        =   22
      Top             =   60
      Width           =   7695
   End
   Begin VB.Label Eu_la_suta2 
      BackStyle       =   0  'Transparent
      Caption         =   "0 %"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   4800
      TabIndex        =   21
      Top             =   4440
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H00800000&
      Height          =   2295
      Left            =   720
      Top             =   4080
      Width           =   7935
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00800000&
      Height          =   2535
      Left            =   720
      Top             =   480
      Width           =   7935
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00800000&
      Height          =   495
      Left            =   720
      Top             =   3360
      Width           =   7935
   End
   Begin VB.Label Eu_la_suta 
      BackStyle       =   0  'Transparent
      Caption         =   "0 %"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   3840
      TabIndex        =   18
      Top             =   4920
      Width           =   855
   End
   Begin VB.Label Oglinda2 
      Alignment       =   2  'Center
      BackColor       =   &H00004000&
      BackStyle       =   0  'Transparent
      Caption         =   "Oglinda"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   735
      Left            =   960
      TabIndex        =   13
      Top             =   5520
      Width           =   7095
   End
   Begin VB.Image Deschide4 
      Height          =   480
      Left            =   8040
      Picture         =   "MiniAVI_AutoStart.frx":489A
      Top             =   2040
      Width           =   480
   End
   Begin VB.Image Deschide3 
      Height          =   480
      Left            =   8040
      Picture         =   "MiniAVI_AutoStart.frx":4B9A
      Top             =   1560
      Width           =   480
   End
   Begin VB.Image Deschide2 
      Height          =   480
      Left            =   8040
      Picture         =   "MiniAVI_AutoStart.frx":4E9A
      Top             =   1080
      Width           =   480
   End
   Begin VB.Label Asteapta 
      Alignment       =   2  'Center
      BackColor       =   &H00004000&
      BackStyle       =   0  'Transparent
      Caption         =   "Oglinda"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0C196&
      Height          =   735
      Left            =   1080
      TabIndex        =   12
      Top             =   5640
      Width           =   7095
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Directorul unde se creaza imaginea CD-ului :"
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   720
      TabIndex        =   11
      Top             =   3120
      Width           =   3255
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Fisierul de subtitrare:"
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   960
      TabIndex        =   7
      Top             =   2160
      Width           =   1455
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Fisierul AVI (filmul):"
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   960
      TabIndex        =   5
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Iconita CD-ului:"
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   960
      TabIndex        =   3
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Titlul Filmului:"
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   960
      TabIndex        =   1
      Top             =   720
      Width           =   1575
   End
End
Attribute VB_Name = "CD_Start"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Private Declare Function SendMessage Lib "user32" _
Alias "SendMessageA" (ByVal hWnd As Long, _
ByVal wMsg As Long, _
ByVal wParam As Long, _
lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()
Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Dim Paul_BTest As Variant
Dim Paul_FSize As Variant

Dim CD1 As New CommonDialog
Dim CD2 As New CommonDialog
Dim CD3 As New CommonDialog

Dim candela As Variant
Dim foarte_naspa As Boolean


Dim FisierAVI As String


Private Sub Ajutor_Click()
AjutorQ.Show
End Sub

Private Sub Alege_directorul_Matrita_Click()
Dim sRet As String

mBFF.InitFolder = "c:\"
sRet = mBFF.BrowseForFolder(Me.hWnd, "Selecteaza directorul in care va fi creata matrita ...")

If (sRet <> vbNullString) Then
Radacina.Text = sRet & "\Oglinda"
End If
End Sub

Private Sub Aratura_Muratura_Timer()
Eu_la_suta.Caption = (100 - Int(100 * Paul_BTest / Paul_FSize)) & " %"
End Sub

Private Sub AVI_GotFocus()
AVI.BackColor = &HE0E0E0
End Sub

Private Sub Bara1_sacadat_Timer()
zz = (Bara.ScaleWidth / 6) * (candela)
'zf = Int((100 / 6) * Int(candela))
'Eu_la_suta2.Caption = zf & " %"

Bara.Cls
Call BitBlt(Bara.hDC, 0, 0, Int(zz), 25, Bara_indigo.hDC, 0, 0, vbSrcCopy)

End Sub

Private Sub Deschide2_Click()
Dim tmp As String


CD1.Filter = "Fisiere ico (*.ico)|*.ico"
CD1.DialogTitle = "Alegeti iconita ce va reprezenta CD-ul !"

CD1.ShowOpen
tmp = CD1.FileName

If tmp <> "" Then
Iconita.Text = tmp
Iconita.BackColor = &HE0E0E0
End If

End Sub

Private Sub Deschide3_Click()
Dim tmp As String
CD2.Filter = "Fisiere suportate|*.mpg;*.mpeg;*.avi|Fisiere mpg (*.mpg)|*.mpg|Fisiere mpeg (*.mpeg)|*.mpeg|Fisiere AVI (*.avi)|*.avi"
CD2.DialogTitle = "Alegeti fisierul video ce va fi inclus in pachet !"


CD2.ShowOpen
tmp = CD2.FileName

If tmp <> "" Then
AVI.Text = tmp
FisierSubtitrare = AVI.Text

FisierSubtitrare = StrReverse(FisierSubtitrare)
Caracter = InStr(FisierSubtitrare, "\") - 1
FisierSubtitrare = Mid(FisierSubtitrare, 1, Caracter)
FisierAVI = StrReverse(FisierSubtitrare)
'MsgBox FisierAVI

AVI.BackColor = &HE0E0E0
End If

End Sub

Private Sub Deschide4_Click()
Dim tmp As String
CD3.Filter = "Fisiere suportate|*.sub;*.txt;*.srt|Fisiere sub (*.sub)|*.sub|Fisiere txt (*.txt)|*.txt|Fisiere srt (*.srt)|*.srt" '"Subtitrare (*.sub)|*.sub"
CD3.DialogTitle = "Alegeti fisierul de subtitrare al fisierului video !"


CD3.ShowOpen
tmp = CD3.FileName

If tmp <> "" Then
Subtitrare.Text = tmp
Subtitrare.BackColor = &HE0E0E0
End If

End Sub

Private Sub despre_eu_Click()
DespreYO.Show
End Sub

Private Sub Form_Load()
foarte_naspa = False
Paul_BTest = 0
Paul_FSize = 0
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim lngReturnValue As Long
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Iconita_GotFocus()
Iconita.BackColor = &HE0E0E0
End Sub

Private Sub Impachetare_Click()
If TitlulFilmului.Text <> "" And Iconita.Text <> "" And Subtitrare.Text <> "" And AVI.Text <> "" Then

If Right(Radacina.Text, 1) = "\" Then Radacina.Text = Mid(Radacina.Text, 1, Len(Radacina.Text) - 1)

If FileExist(Iconita.Text) = False Then
MsgBox "Fisierul - " & Iconita.Text & " nu exista !"
End If

If FileExist(AVI.Text) = False Then
MsgBox "Fisierul - " & AVI.Text & " nu exista !"
End If

If FileExist(Subtitrare.Text) = False Then
MsgBox "Fisierul - " & Subtitrare.Text & " nu exista !"
End If

'MsgBox "Trebuie sa asteptati citeva minute !"

Crearea_Directoarelor

If foarte_naspa = True Then
MsgBox "Matrita nu a fost generata. (stergeti vechea matrita sau schimbati drectorul in care va fi generata imaginea)"
Exit Sub
End If
Fisierul_INI
Fisierul_KHZ
Copiere_Pachet
'Aratura_Muratura.Enabled = False
lasa_ne.Enabled = True
Else

If TitlulFilmului.Text = "" And Iconita.Text = "" And Subtitrare.Text = "" And AVI.Text = "" Then
MsgBox "Completati toate datele cerute de program !"
TitlulFilmului.BackColor = &HFF0000
AVI.BackColor = &HFF0000
Subtitrare.BackColor = &HFF0000
Iconita.BackColor = &HFF0000
Exit Sub
End If

If TitlulFilmului.Text = "" Then
MsgBox "Scrieti titlul programului !"
TitlulFilmului.BackColor = &HFF0000
Exit Sub
End If

If Iconita.Text = "" Then
MsgBox "Alegeti iconita CD-ului !"
Iconita.BackColor = &HFF0000
Exit Sub
End If

If AVI.Text = "" Then
MsgBox "Alegeti fisierul filmului !"
AVI.BackColor = &HFF0000
Exit Sub
End If

If Subtitrare.Text = "" Then
MsgBox "Alegeti fisierul pentru subtitrare !"
Subtitrare.BackColor = &HFF0000
Exit Sub
End If

End If
End Sub

Function Crearea_Directoarelor()
On Error GoTo naspa
foarte_naspa = False

MkDir Radacina
MkDir Radacina & "\Mini_AVI"
MkDir Radacina & "\Mini_AVI\FilmAVI"

GoTo 4
naspa:
foarte_naspa = True
MsgBox "Directoarele exista deja ! Schimbati locul de generare al matritei."
Exit Function
4:
End Function


Function Fisierul_KHZ()

If Ecran.Value = 1 Then
Eu = "Marit"
Else
Eu = "Normal"
End If

'MsgBox VariabileSTR
Open Radacina & "\Mini_AVI\MiniAVI.khz" For Output As #1
Print #1, "\FilmAVI\"
Print #1, FisierAVI
Print #1, TitlulFilmului.Text
Print #1, Eu
Close #1
End Function

Function Fisierul_INI()
r1 = "[AUTORUN]"
r2 = "OPEN=" & "Mini_AVI\Mini_AVI.exe"
r3 = "Icon=" & "Mini_AVI\" & TitlulFilmului.Text & ".ico"


'MsgBox FisierAVI

Open Radacina & "\AUTORUN.INF" For Output As #1
Print #1, r1
Print #1, r2
Print #1, r3
Close #1
End Function

Function Copiere_Pachet()
Asteapta.Caption = "Asteapta ..."
Oglinda2.Caption = "Asteapta ..."

Bara1_sacadat.Enabled = True

dd = dd + 1
candela = candela + 1
FileCopy App.Path & "\Oglinda.alfa", Radacina.Text & "\Mini_AVI\msvbvm60.dll"
dd = dd + 1
candela = candela + 1
FileCopy App.Path & "\Oglinda.beta", Radacina.Text & "\Mini_AVI\Mini_AVI.exe"
dd = dd + 1
candela = candela + 1
FileCopy Iconita.Text, Radacina.Text & "\Mini_AVI\" & TitlulFilmului.Text & ".ico"
dd = dd + 1
candela = candela + 1
DoEvents

Call Copiere_Fisier(AVI.Text, Radacina & "\Mini_AVI\FilmAVI\" & FisierAVI)
'FileCopy AVI.Text, Radacina & "\Mini_AVI\FilmAVI\" & FisierAVI

dd = dd + 1
candela = candela + 1

FisierSubtitrare = FisierAVI

FisierSubtitrare = StrReverse(FisierSubtitrare)

Caracter = InStr(FisierSubtitrare, ".") + 1

FisierSubtitrare = Mid(FisierSubtitrare, Caracter, Len(FisierSubtitrare))

FisierSUB = StrReverse(FisierSubtitrare) & ".sub"

FileCopy Subtitrare.Text, Radacina & "\Mini_AVI\FilmAVI\" & FisierSUB
dd = dd + 1

candela = candela + 1

Asteapta.Caption = "Matrita a fost generata !"
Oglinda2.Caption = "Matrita a fost generata !"

'Bara1_sacadat.Enabled = False
End Function


Function FileExist(aFile As String) As Boolean
On Error GoTo 23

If aFile = "" Then
FileExist = False
Exit Function
End If

If Dir$(aFile) = "" Then

If Dir$(aFile, vbHidden) = "" Then
FileExist = False
Else
FileExist = True
End If

Else
FileExist = True
End If
Exit Function
23:
FileExist = False

End Function

Function Copiere_Fisier(src As String, dst As String) As Single
On Error Resume Next
 Static Buf$
 Dim BTest!, FSize!
 Dim Chunk%, F1%, F2%

 Const BUFSIZE = 1024

'Un buffer mai mare e mai bun dar nu tre' sa depasesc 64k

   If Dir(src) = "" Then MsgBox "Fisierul nu a fost gasit": Exit Function
   If Len(Dir(dst)) Then
      If MsgBox(UCase(dst) & Chr(13) & Chr(10) & "Fisierul exista ! " & vbCrLf & vbCrLf & "Suprascriem fisierul?", 4) <> 6 Then Exit Function
      Kill dst
   End If
 
Bara_copiere.Cls
 
Aratura_Muratura.Enabled = True
 
   On Error GoTo Eruare
   F1 = FreeFile
   Open src For Binary As F1
   F2 = FreeFile
   Open dst For Binary As F2
 
   FSize = LOF(F1)
   BTest = FSize - LOF(F2)
   Do
      If BTest < BUFSIZE Then
         Chunk = BTest
      Else
         Chunk = BUFSIZE
      End If
      Buf = String(Chunk, " ")
      Get F1, , Buf
      Put F2, , Buf
      BTest = FSize - LOF(F2)
DoEvents

zz = (Bara_copiere.ScaleWidth / 100) * (100 - Int(100 * BTest / FSize))

Bara_copiere.Cls
Call BitBlt(Bara_copiere.hDC, 0, 0, Int(zz), 25, Bara_indigo.hDC, 0, 0, vbSrcCopy)



Paul_BTest = BTest
Paul_FSize = FSize

DoEvents
   Loop Until BTest = 0
   Close F1
   Close F2

   Copiere_Fisier = FSize
   Exit Function

Eruare:
   MsgBox "Copierea fisierului nu a putut fi facuta !"
   Close F1
   Close F2
   
   'Arata_La_suta.Enabled = False
   
   Exit Function
End Function

Private Sub Inchide_Click()
Unload DespreYO
Unload AjutorQ
Unload Me
End Sub

Private Sub jos_Eu_Click()
Me.WindowState = 1
End Sub

Private Sub lasa_ne_Timer()
'Arata_La_suta.Enabled = False
Aratura_Muratura.Enabled = False
Bara1_sacadat.Enabled = False

lasa_ne.Enabled = False

Eu_la_suta2.Caption = "0 %"
Eu_la_suta.Caption = "0 %"
Bara.Cls
Bara_copiere.Cls
End Sub

Private Sub Misca_forma_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim lngReturnValue As Long
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Subtitrare_GotFocus()
Subtitrare.BackColor = &HE0E0E0
End Sub

Private Sub TitlulFilmului_GotFocus()
TitlulFilmului.BackColor = &HE0E0E0
End Sub
