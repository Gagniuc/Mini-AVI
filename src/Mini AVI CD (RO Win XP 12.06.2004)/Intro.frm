VERSION 5.00
Begin VB.Form Intro 
   BorderStyle     =   0  'None
   Caption         =   "Intro"
   ClientHeight    =   3780
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7875
   Icon            =   "Intro.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Intro.frx":2982
   ScaleHeight     =   3780
   ScaleWidth      =   7875
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   3000
      Left            =   6720
      Top             =   6960
   End
   Begin VB.Line Line5 
      BorderColor     =   &H00000000&
      X1              =   2280
      X2              =   120
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Label TF0 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Mini AVI player"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   975
      Left            =   240
      TabIndex        =   7
      Top             =   1320
      Width           =   7455
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Software && Copyright by Paul Gagniuc - 2004"
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   3480
      Width           =   4335
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Mini AVI player"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   0
      Width           =   1935
   End
   Begin VB.Label FS 
      Height          =   255
      Left            =   1200
      TabIndex        =   4
      Top             =   7320
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00004000&
      X1              =   4080
      X2              =   480
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00004000&
      X1              =   2160
      X2              =   6480
      Y1              =   2280
      Y2              =   2280
   End
   Begin VB.Label PaulGagniuc 
      BackStyle       =   0  'Transparent
      Caption         =   "NU"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   7320
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label NF 
      BackStyle       =   0  'Transparent
      Caption         =   "Nume fisier"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   6960
      Width           =   7455
   End
   Begin VB.Label CF 
      BackStyle       =   0  'Transparent
      Caption         =   "Cale fisier"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   6720
      Width           =   7455
   End
   Begin VB.Label TF 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Mini AVI player"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00004000&
      Height          =   975
      Left            =   360
      TabIndex        =   0
      Top             =   1440
      Width           =   7335
   End
End
Attribute VB_Name = "Intro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Form_Load()
Dim Matrice(1 To 4) As String
Timer1.Enabled = False
'Matrice(1) = "CF#"
'Matrice(2) = "NF#"
'Matrice(3) = "TF#"

On Error GoTo 666

'MsgBox App.Path & "\MiniAVI.khz"
ff = FreeFile
Open App.Path & "\MiniAVI.khz" For Input As #ff

a = 0

Do While Not EOF(1)
Line Input #ff, rind
'MsgBox rind
'For P = 1 To 3

a = a + 1

If a > 4 Then GoTo 555

Matrice(a) = rind
'MsgBox Matrice(a)

'If InStr(rind, Matrice(P)) = True Then
'MsgBox Mid(rind, InStr(rind, Matrice(P)) + 3, Len(rind))
'MsgBox Matrice(P)
'End If

'Next P
'g = g & Rind & "|"
Loop

555:
Close #ff

'MsgBox Matrice(1)
CF.Caption = App.Path & Matrice(1)
NF.Caption = Matrice(2)
TF.Caption = Matrice(3)
TF0.Caption = Matrice(3)
FS.Caption = Matrice(4)

If Matrice(1) <> "" And Matrice(2) <> "" Then
PaulGagniuc.Caption = "DA"
End If

'For n = 1 To 3
'MsgBox Matrice(n)
'Next n

'MsgBox g

666:
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
Timer1.Enabled = False
MiniAVI.Show
Unload Me
End Sub
