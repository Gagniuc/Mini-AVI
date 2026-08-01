VERSION 5.00
Begin VB.Form Despre 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "About"
   ClientHeight    =   3255
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4455
   Icon            =   "Despre.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Despre.frx":2982
   ScaleHeight     =   3255
   ScaleWidth      =   4455
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Butterfly Effect"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   2760
      TabIndex        =   4
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Mobius"
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   6360
      TabIndex        =   3
      Top             =   2040
      Width           =   615
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "www.NovusOrdo.ro"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   1440
      TabIndex        =   2
      Top             =   240
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "  Software && Copyright© by Paul Gagniuc Aurelian"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   3000
      Width           =   4335
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Novus Ordo , Anno Domini 2004"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   2760
      Width           =   2775
   End
   Begin VB.Image Image2 
      Height          =   3600
      Left            =   4560
      Picture         =   "Despre.frx":6E2E
      Top             =   0
      Width           =   3090
   End
   Begin VB.Image Iesire 
      Height          =   1095
      Left            =   7560
      MouseIcon       =   "Despre.frx":81FD
      MousePointer    =   99  'Custom
      Picture         =   "Despre.frx":8AC7
      Stretch         =   -1  'True
      ToolTipText     =   "Exit"
      Top             =   0
      Width           =   1200
   End
End
Attribute VB_Name = "Despre"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Iesire_Click()
Unload Me
End Sub
