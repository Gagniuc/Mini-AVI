VERSION 5.00
Begin VB.Form Ajutor 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ajutor"
   ClientHeight    =   4695
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6555
   Icon            =   "Ajutor.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4695
   ScaleWidth      =   6555
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Cu Mini AVI pot fi rulate urmatoarele extensii video : *.avi, *.asf, *.mpg, *.mpeg, *.wmv "
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   4320
      Width           =   6135
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      X1              =   120
      X2              =   2520
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Ctrl + [F5] - Pauza"
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   3720
      Width           =   2055
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Ctrl + [F7] - Ecran maxim (FullScreen)"
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   3960
      Width           =   3375
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Comenzi tastatura (HotKeys)"
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   3360
      Width           =   2055
   End
   Begin VB.Image Image1 
      Height          =   3060
      Left            =   120
      Picture         =   "Ajutor.frx":0CCA
      Top             =   120
      Width           =   6330
   End
End
Attribute VB_Name = "Ajutor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
