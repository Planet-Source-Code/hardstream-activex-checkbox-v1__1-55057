VERSION 5.00
Object = "*\AHSCTVXCHCKBXCTROL.vbp"
Begin VB.Form Form1 
   Caption         =   "Check test"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Restore default check image"
      Height          =   495
      Left            =   2040
      TabIndex        =   2
      Top             =   2520
      Width           =   2415
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   3480
      Top             =   1560
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Change check value"
      Height          =   495
      Left            =   0
      TabIndex        =   1
      Top             =   2520
      Width           =   1935
   End
   Begin HSCTVXCHCKBXCTROL.Check Check1 
      Height          =   255
      Left            =   1440
      TabIndex        =   0
      Top             =   960
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
   End
   Begin VB.Image Image2 
      Height          =   180
      Left            =   720
      Picture         =   "frmMain.frx":0000
      Top             =   240
      Width           =   180
   End
   Begin VB.Image Image1 
      Height          =   180
      Left            =   480
      Picture         =   "frmMain.frx":01F2
      Top             =   240
      Width           =   180
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Check1_Change()
Me.Caption = Check1.Checked
End Sub

Private Sub Command1_Click()
If Me.Caption = "True" Then Check1.Checked = False Else Check1.Checked = True
Check1.SetCheck
End Sub

Private Sub Command2_Click()
Check1.Restore
End Sub

Private Sub Timer1_Timer()
Check1.CheckImage Image1.Picture, Image2.Picture
Timer1 = False
End Sub
