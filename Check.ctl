VERSION 5.00
Begin VB.UserControl Check 
   ClientHeight    =   3600
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4800
   ScaleHeight     =   3600
   ScaleWidth      =   4800
   ToolboxBitmap   =   "Check.ctx":0000
   Begin VB.Image Image3 
      Height          =   180
      Left            =   240
      Picture         =   "Check.ctx":0312
      Top             =   3000
      Width           =   180
   End
   Begin VB.Image Image2 
      Height          =   180
      Left            =   0
      Picture         =   "Check.ctx":0504
      Top             =   3000
      Width           =   180
   End
   Begin VB.Image CH 
      Height          =   180
      Left            =   240
      Picture         =   "Check.ctx":06F6
      Top             =   2760
      Width           =   180
   End
   Begin VB.Image Un 
      Height          =   180
      Left            =   0
      Picture         =   "Check.ctx":08E8
      Top             =   2760
      Width           =   180
   End
   Begin VB.Image Image1 
      Height          =   180
      Left            =   0
      Picture         =   "Check.ctx":0ADA
      Top             =   0
      Width           =   180
   End
End
Attribute VB_Name = "Check"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Event Change()

Public Checked As Boolean

Sub CheckImage(UnCheckImage, CheckImage)
Un.Picture = UnCheckImage
CH.Picture = CheckImage

If Checked = False Then Image1.Picture = Un.Picture
If Checked = True Then Image1.Picture = CH.Picture
End Sub

Sub SetCheck()
If Checked = True Then Image1.Picture = CH.Picture
If Checked = False Then Image1.Picture = Un.Picture
Refresh
RaiseEvent Change
End Sub

Private Sub Image1_Click()
If Image1.Picture = Un.Picture Then Image1.Picture = CH.Picture Else Image1.Picture = Un.Picture
If Image1.Picture = Un.Picture Then Checked = False Else Checked = True
Refresh
RaiseEvent Change
End Sub

Private Sub Image1_DblClick()
If Image1.Picture = Un.Picture Then Image1.Picture = CH.Picture Else Image1.Picture = Un.Picture
If Image1.Picture = Un.Picture Then Checked = False Else Checked = True
Refresh
RaiseEvent Change
End Sub

Private Sub UserControl_Initialize()
Image1.Picture = Un.Picture
Refresh
RaiseEvent Change
End Sub

Sub Refresh()
UserControl.Refresh
Image1.Refresh
Un.Refresh
CH.Refresh
If Checked = False Then Image1.Picture = Un.Picture
If Checked = True Then Image1.Picture = CH.Picture
End Sub

Sub Restore()
Un.Picture = Image2.Picture
CH.Picture = Image3.Picture
Refresh
End Sub

Private Sub UserControl_Resize()
Image1.Picture = Un.Picture
Refresh
RaiseEvent Change
End Sub
