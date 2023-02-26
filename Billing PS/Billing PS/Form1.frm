VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H8000000D&
   Caption         =   "Form1"
   ClientHeight    =   7800
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12600
   LinkTopic       =   "Form1"
   ScaleHeight     =   7800
   ScaleWidth      =   12600
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame6 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Pengaturan"
      Height          =   3375
      Left            =   7080
      TabIndex        =   46
      Top             =   4200
      Width           =   5175
      Begin VB.CommandButton Command7 
         Caption         =   "ALL ON"
         Height          =   375
         Left            =   1560
         TabIndex        =   57
         Top             =   1200
         Width           =   855
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Tutup Program"
         Height          =   375
         Left            =   240
         TabIndex        =   52
         Top             =   1680
         Width           =   1215
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Atur Harga"
         Height          =   375
         Left            =   240
         TabIndex        =   51
         Top             =   1200
         Width           =   1215
      End
      Begin VB.TextBox txtOperator 
         Height          =   285
         Left            =   1320
         TabIndex        =   49
         Text            =   "Operator"
         Top             =   720
         Width           =   1095
      End
      Begin VB.TextBox txtHarga 
         Enabled         =   0   'False
         Height          =   285
         Left            =   1320
         TabIndex        =   48
         Text            =   "6000"
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "5301401010"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   55
         Top             =   2880
         Width           =   2175
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "ROHMAADI"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   54
         Top             =   2520
         Width           =   2175
      End
      Begin VB.Image Image1 
         Height          =   2895
         Left            =   2640
         Picture         =   "Form1.frx":0000
         Stretch         =   -1  'True
         Top             =   360
         Width           =   2415
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "PERSEWAAN PS"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   53
         Top             =   2160
         Width           =   2175
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "Nama Operator"
         Height          =   255
         Left            =   120
         TabIndex        =   50
         Top             =   720
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Harga Perjam"
         Height          =   255
         Left            =   120
         TabIndex        =   47
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame Frame5 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Rekaman"
      Height          =   3375
      Left            =   7080
      TabIndex        =   44
      Top             =   600
      Width           =   5175
      Begin VB.ListBox List1 
         Height          =   2985
         Left            =   120
         TabIndex        =   45
         Top             =   240
         Width           =   4935
      End
      Begin MSCommLib.MSComm MSComm1 
         Left            =   0
         Top             =   0
         _ExtentX        =   1005
         _ExtentY        =   1005
         _Version        =   393216
         CommPort        =   6
         DTREnable       =   -1  'True
         BaudRate        =   115200
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0E0FF&
      Caption         =   "PS 4"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   3720
      TabIndex        =   33
      Top             =   4200
      Width           =   3135
      Begin VB.Timer Timer8 
         Enabled         =   0   'False
         Interval        =   36000
         Left            =   0
         Top             =   0
      End
      Begin VB.Timer Timer4 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   3000
         Top             =   240
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Mulai"
         Height          =   375
         Left            =   1080
         TabIndex        =   34
         Top             =   2760
         Width           =   615
      End
      Begin VB.Shape Shape4 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         Height          =   495
         Left            =   2400
         Shape           =   3  'Circle
         Top             =   2640
         Width           =   495
      End
      Begin VB.Label Label31 
         BackStyle       =   0  'Transparent
         Caption         =   "Durasi"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   43
         Top             =   2880
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.Label lblDurasi4 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "00:00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   42
         Top             =   960
         Width           =   3015
      End
      Begin VB.Label Label29 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Pemakai: User 4"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   0
         TabIndex        =   41
         Top             =   480
         Width           =   3015
      End
      Begin VB.Label lblBiaya4 
         BackStyle       =   0  'Transparent
         Caption         =   ": Rp. 0,-"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   40
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label27 
         BackStyle       =   0  'Transparent
         Caption         =   "Biaya"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   39
         Top             =   1800
         Width           =   1095
      End
      Begin VB.Label Label26 
         BackStyle       =   0  'Transparent
         Caption         =   "Jam Mulai"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   38
         Top             =   2040
         Width           =   1095
      End
      Begin VB.Label lblMulai4 
         BackStyle       =   0  'Transparent
         Caption         =   ": 00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   37
         Top             =   2040
         Width           =   1695
      End
      Begin VB.Label lblSkrg4 
         BackStyle       =   0  'Transparent
         Caption         =   ": 00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   36
         Top             =   2280
         Width           =   1575
      End
      Begin VB.Label Label23 
         BackStyle       =   0  'Transparent
         Caption         =   "Jam Sekarang"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   35
         Top             =   2280
         Width           =   1575
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0E0FF&
      Caption         =   "PS 3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   360
      TabIndex        =   22
      Top             =   4200
      Width           =   3135
      Begin VB.Timer Timer7 
         Enabled         =   0   'False
         Interval        =   36000
         Left            =   0
         Top             =   0
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Mulai"
         Height          =   375
         Left            =   1080
         TabIndex        =   23
         Top             =   2760
         Width           =   615
      End
      Begin VB.Timer Timer3 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   3000
         Top             =   240
      End
      Begin VB.Label Label22 
         BackStyle       =   0  'Transparent
         Caption         =   "Jam Sekarang"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   32
         Top             =   2280
         Width           =   1575
      End
      Begin VB.Label lblSkrg3 
         BackStyle       =   0  'Transparent
         Caption         =   ": 00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   31
         Top             =   2280
         Width           =   1575
      End
      Begin VB.Label lblMulai3 
         BackStyle       =   0  'Transparent
         Caption         =   ": 00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   30
         Top             =   2040
         Width           =   1695
      End
      Begin VB.Label Label19 
         BackStyle       =   0  'Transparent
         Caption         =   "Jam Mulai"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   29
         Top             =   2040
         Width           =   1095
      End
      Begin VB.Label Label18 
         BackStyle       =   0  'Transparent
         Caption         =   "Biaya"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   1800
         Width           =   1095
      End
      Begin VB.Label lblBiaya3 
         BackStyle       =   0  'Transparent
         Caption         =   ": Rp. 0,-"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   27
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Pemakai: User 3"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   0
         TabIndex        =   26
         Top             =   480
         Width           =   3015
      End
      Begin VB.Label lblDurasi3 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "00:00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   25
         Top             =   960
         Width           =   3015
      End
      Begin VB.Label Label14 
         BackStyle       =   0  'Transparent
         Caption         =   "Durasi"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   24
         Top             =   2880
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.Shape Shape3 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         Height          =   495
         Left            =   2400
         Shape           =   3  'Circle
         Top             =   2640
         Width           =   495
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0E0FF&
      Caption         =   "PS 2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   3720
      TabIndex        =   11
      Top             =   600
      Width           =   3135
      Begin VB.Timer Timer6 
         Enabled         =   0   'False
         Interval        =   36000
         Left            =   0
         Top             =   0
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Mulai"
         Height          =   375
         Left            =   1080
         TabIndex        =   12
         Top             =   2760
         Width           =   615
      End
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   3000
         Top             =   240
      End
      Begin VB.Label Label12 
         BackStyle       =   0  'Transparent
         Caption         =   "Jam Sekarang"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   21
         Top             =   2280
         Width           =   1575
      End
      Begin VB.Label lblSkrg2 
         BackStyle       =   0  'Transparent
         Caption         =   ": 00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   20
         Top             =   2280
         Width           =   1575
      End
      Begin VB.Label lblMulai2 
         BackStyle       =   0  'Transparent
         Caption         =   ": 00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   19
         Top             =   2040
         Width           =   1695
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Jam Mulai"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   18
         Top             =   2040
         Width           =   1095
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Biaya"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   17
         Top             =   1800
         Width           =   1095
      End
      Begin VB.Label lblBiaya2 
         BackStyle       =   0  'Transparent
         Caption         =   ": Rp. 0,-"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   16
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Pemakai: User 2"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   0
         TabIndex        =   15
         Top             =   480
         Width           =   3015
      End
      Begin VB.Label lblDurasi2 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "00:00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   14
         Top             =   960
         Width           =   3015
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Durasi"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   2880
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.Shape Shape2 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         Height          =   495
         Left            =   2400
         Shape           =   3  'Circle
         Top             =   2640
         Width           =   495
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "PS 1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   3135
      Begin VB.Timer Timer5 
         Enabled         =   0   'False
         Interval        =   36000
         Left            =   2640
         Top             =   1560
      End
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   3000
         Top             =   240
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Mulai"
         Height          =   375
         Left            =   1080
         TabIndex        =   10
         Top             =   2760
         Width           =   615
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         Height          =   495
         Left            =   2400
         Shape           =   3  'Circle
         Top             =   2640
         Width           =   495
      End
      Begin VB.Label Label13 
         BackStyle       =   0  'Transparent
         Caption         =   "Durasi"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   2880
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.Label lblDurasi1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "00:00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   8
         Top             =   960
         Width           =   3015
      End
      Begin VB.Label lblNama 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Pemakai: User 1"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   0
         TabIndex        =   7
         Top             =   480
         Width           =   3015
      End
      Begin VB.Label lblBiaya1 
         BackStyle       =   0  'Transparent
         Caption         =   ": Rp. 0,-"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   6
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Biaya"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   1800
         Width           =   1095
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Jam Mulai"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   2040
         Width           =   1095
      End
      Begin VB.Label lblMulai1 
         BackStyle       =   0  'Transparent
         Caption         =   ": 00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   3
         Top             =   2040
         Width           =   1695
      End
      Begin VB.Label lblSkrg1 
         BackStyle       =   0  'Transparent
         Caption         =   ": 00:00"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   2
         Top             =   2280
         Width           =   1575
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Jam Sekarang"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   2280
         Width           =   1575
      End
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      Caption         =   "BILLING PS 4 UNIT DENGAN VISUAL BASIC DAN MIKROKONTROLLER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   56
      Top             =   120
      Width           =   11895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Start1 As Date, Stop1 As Date
Dim Start2 As Date, Stop2 As Date
Dim Start3 As Date, Stop3 As Date
Dim Start4 As Date, Stop4 As Date
Dim Harga As Long
Dim Biaya1 As Long
Dim Biaya2 As Long
Dim Biaya3 As Long
Dim Biaya4 As Long
Function DateDiffX(dStart As Date, dEnd As Date, Optional bDetailed As Boolean) As Variant
    Dim TotalDays
    Dim Years, Months, Days, hours, minutes, seconds

    If bDetailed Then
        TotalDays = dEnd - dStart
        hours = Hour(dEnd - dStart)
        minutes = Minute(dEnd - dStart)
        seconds = Second(dEnd - dStart)
         
        If hours < 10 Then
            hours = "0" & hours
        ElseIf hours > 9 Then
            hours = hours
        End If
        If minutes < 10 Then
            minutes = "0" & minutes
        ElseIf minutes > 9 Then
            minutes = minutes
        End If
        If seconds < 10 Then
            seconds = "0" & seconds
        ElseIf seconds > 9 Then
            seconds = seconds
        End If
        DateDiffX = hours & ":" & minutes & ":" & seconds
        Exit Function
    End If
    
End Function

Private Sub Command1_Click()
If Command1.Caption = "Mulai" Then
    Command1.Caption = "Stop"
    Timer1.Enabled = True
    Timer5.Enabled = True
    lblMulai1 = ": " & Format(Time, "hh:mm:ss")
    Shape1.BackColor = vbGreen
    Start1 = Format(Time, "hh:mm:ss")
    List1.AddItem Format("User 1: Mulai " & Start1)
    MSComm1.Output = "#ON1$" + vbCr
ElseIf Command1.Caption = "Stop" Then
    Command1.Caption = "Mulai"
    Timer1.Enabled = False
    Timer5.Enabled = False
    lblSkrg1 = ": " & Format(Time, "hh:mm:ss")
    Shape1.BackColor = vbRed
    List1.AddItem Format("User 1: Stop " & Format(Time, "hh:mm:ss"))
    MSComm1.Output = "#OF1$" + vbCr
End If
End Sub

Private Sub Command2_Click()
If Command2.Caption = "Mulai" Then
    Command2.Caption = "Stop"
    Timer2.Enabled = True
    Timer6.Enabled = True
    lblMulai2 = ": " & Format(Time, "hh:mm:ss")
    Shape2.BackColor = vbGreen
    Start2 = Format(Time, "hh:mm:ss")
    List1.AddItem Format("User 2: Mulai " & Start2)
    MSComm1.Output = "#ON2$" + vbCr
ElseIf Command2.Caption = "Stop" Then
    Command2.Caption = "Mulai"
    Timer2.Enabled = False
    Timer6.Enabled = False
    lblSkrg2 = ": " & Format(Time, "hh:mm:ss")
    Shape2.BackColor = vbRed
    List1.AddItem Format("User 2: Stop " & Format(Time, "hh:mm:ss"))
    MSComm1.Output = "#OF2$" + vbCr
End If
End Sub

Private Sub Command3_Click()
If Command3.Caption = "Mulai" Then
    Command3.Caption = "Stop"
    Timer3.Enabled = True
    Timer7.Enabled = True
    lblMulai3 = ": " & Format(Time, "hh:mm:ss")
    Shape3.BackColor = vbGreen
    Start3 = Format(Time, "hh:mm:ss")
    List1.AddItem Format("User 3: Mulai " & Start3)
    MSComm1.Output = "#ON3$" + vbCr
ElseIf Command3.Caption = "Stop" Then
    Command3.Caption = "Mulai"
    Timer3.Enabled = False
    Timer7.Enabled = False
    lblSkrg3 = ": " & Format(Time, "hh:mm:ss")
    Shape3.BackColor = vbRed
    List1.AddItem Format("User 3: Stop " & Format(Time, "hh:mm:ss"))
    MSComm1.Output = "#OF3$" + vbCr
End If
End Sub

Private Sub Command4_Click()
If Command4.Caption = "Mulai" Then
    Command4.Caption = "Stop"
    Timer4.Enabled = True
    Timer8.Enabled = True
    lblMulai4 = ": " & Format(Time, "hh:mm:ss")
    Shape4.BackColor = vbGreen
    Start4 = Format(Time, "hh:mm:ss")
    List1.AddItem Format("User 4: Mulai " & Start4)
    MSComm1.Output = "#ON4$" + vbCr
ElseIf Command4.Caption = "Stop" Then
    Command4.Caption = "Mulai"
    Timer4.Enabled = False
    Timer8.Enabled = False
    lblSkrg4 = ": " & Format(Time, "hh:mm:ss")
    Shape4.BackColor = vbRed
    List1.AddItem Format("User 4: Stop " & Format(Time, "hh:mm:ss"))
    MSComm1.Output = "#OF4$" + vbCr
End If
End Sub

Private Sub Command5_Click()
Dim HargaSave As Long
If Command5.Caption = "Atur Harga" Then
    Command5.Caption = "Simpan Harga"
    txtHarga.Enabled = True
ElseIf Command5.Caption = "Simpan Harga" Then
    Command5.Caption = "Atur Harga"
    txtHarga.Enabled = False
    HargaSave = Val(txtHarga.Text) / 100
    SaveSetting App.Title, "Temp", "Harga", Harga
    Harga = HargaSave
End If
End Sub

Private Sub Command6_Click()
Unload Me
End Sub

Private Sub Command7_Click()
If Command7.Caption = "ALL ON" Then
    Command7.Caption = "ALL OFF"
    MSComm1.Output = "#ALLON$" + vbCr
    Command1.Caption = "Mulai"
    Command1_Click
    Command2.Caption = "Mulai"
    Command2_Click
    Command3.Caption = "Mulai"
    Command3_Click
    Command4.Caption = "Mulai"
    Command4_Click
    Biaya1 = 0
    Biaya2 = 0
    Biaya3 = 0
    Biaya4 = 0
ElseIf Command7.Caption = "ALL OFF" Then
    Command7.Caption = "ALL ON"
    MSComm1.Output = "#ALLOF$" + vbCr
    Command1.Caption = "Stop"
    Command1_Click
    Command2.Caption = "Stop"
    Command2_Click
    Command3.Caption = "Stop"
    Command3_Click
    Command4.Caption = "Stop"
    Command4_Click
End If

End Sub

Private Sub Form_Load()

Biaya1 = 0
Biaya2 = 0
Biaya3 = 0
Biaya4 = 0
Harga = GetSetting(App.Title, "Temp", "Harga", "Billing")
txtHarga.Text = Harga * 100
MSComm1.PortOpen = True
MSComm1.Output = "#ALLOF$" + vbCr
End Sub

Private Sub Form_Unload(Cancel As Integer)
SaveSetting App.Title, "Temp", "Harga", Harga
MSComm1.Output = "#ALLOF$" + vbCr
MSComm1.PortOpen = False
End Sub



Private Sub Timer1_Timer()
Stop1 = Format(Time, "hh:mm:ss")
lblSkrg1 = ": " & Format(Time, "hh:mm:ss")
lblDurasi1 = DateDiffX(Start1, Stop1, True)

End Sub

Private Sub Timer2_Timer()
Stop2 = Format(Time, "hh:mm:ss")
lblSkrg2 = ": " & Format(Time, "hh:mm:ss")
lblDurasi2 = DateDiffX(Start2, Stop2, True)


End Sub

Private Sub Timer3_Timer()
Stop3 = Format(Time, "hh:mm:ss")
lblSkrg3 = ": " & Format(Time, "hh:mm:ss")
lblDurasi3 = DateDiffX(Start3, Stop3, True)

End Sub

Private Sub Timer4_Timer()
Stop4 = Format(Time, "hh:mm:ss")
lblSkrg4 = ": " & Format(Time, "hh:mm:ss")
lblDurasi4 = DateDiffX(Start4, Stop4, True)

End Sub

Private Sub Timer5_Timer()
Timer5.Tag = Biaya1 + Harga
lblBiaya1 = ": Rp. " & Timer5.Tag & ",-"
Biaya1 = Timer5.Tag
End Sub

Private Sub Timer6_Timer()
Timer6.Tag = Biaya2 + Harga
lblBiaya2 = ": Rp. " & Timer6.Tag & ",-"
Biaya2 = Timer6.Tag

End Sub

Private Sub Timer7_Timer()
Timer7.Tag = Biaya3 + Harga
lblBiaya3 = ": Rp. " & Timer7.Tag & ",-"
Biaya3 = Timer7.Tag

End Sub

Private Sub Timer8_Timer()
Timer8.Tag = Biaya4 + Harga
lblBiaya4 = ": Rp. " & Timer8.Tag & ",-"
Biaya4 = Timer8.Tag

End Sub
