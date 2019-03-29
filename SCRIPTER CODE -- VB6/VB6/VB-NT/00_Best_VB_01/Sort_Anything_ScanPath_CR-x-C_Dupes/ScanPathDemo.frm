VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form ScanPath 
   Caption         =   "ScanPath 2.0 - "
   ClientHeight    =   9240
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   14490
   Icon            =   "ScanPathDemo.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9240
   ScaleWidth      =   14490
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   585
      Top             =   4545
   End
   Begin VB.CommandButton cmdHelp 
      Caption         =   "Help !"
      Height          =   825
      Left            =   9300
      Picture         =   "ScanPathDemo.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   40
      Top             =   3675
      Visible         =   0   'False
      Width           =   1875
   End
   Begin VB.TextBox txtHelp 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      Height          =   2115
      Left            =   1275
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   39
      Text            =   "ScanPathDemo.frx":1194
      Top             =   3675
      Visible         =   0   'False
      Width           =   7245
   End
   Begin VB.ComboBox cboMask 
      Height          =   315
      Left            =   540
      TabIndex        =   1
      Text            =   "*.jpg"
      Top             =   1110
      Width           =   6105
   End
   Begin VB.CommandButton cmdBrowse 
      Caption         =   "..."
      Height          =   315
      Left            =   6090
      TabIndex        =   27
      TabStop         =   0   'False
      Top             =   750
      Width           =   555
   End
   Begin VB.TextBox txtPath 
      Height          =   315
      Left            =   555
      TabIndex        =   0
      Text            =   "E:\My Music Zen"
      Top             =   735
      Width           =   5505
   End
   Begin VB.CheckBox chkSubFolders 
      Caption         =   "Search Sub-Folders"
      Height          =   195
      Left            =   1530
      TabIndex        =   8
      Top             =   2070
      Value           =   1  'Checked
      Width           =   1785
   End
   Begin VB.CheckBox chkPatternMatching 
      Caption         =   "Pattern Matching"
      Height          =   195
      Left            =   1530
      TabIndex        =   7
      Top             =   1830
      Value           =   1  'Checked
      Width           =   1815
   End
   Begin VB.CheckBox chkNormal 
      Caption         =   "Normal"
      Height          =   195
      Left            =   90
      TabIndex        =   2
      Top             =   1830
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkArchive 
      Caption         =   "Archive"
      Height          =   195
      Left            =   90
      TabIndex        =   3
      Top             =   2070
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkHidden 
      Caption         =   "Hidden"
      Height          =   195
      Left            =   90
      TabIndex        =   4
      Top             =   2310
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkReadOnly 
      Caption         =   "Read Only"
      Height          =   195
      Left            =   90
      TabIndex        =   5
      Top             =   2535
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkSystem 
      Caption         =   "System"
      Height          =   195
      Left            =   90
      TabIndex        =   6
      Top             =   2760
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.ComboBox cboDate 
      Height          =   315
      Left            =   5940
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   2010
      Width           =   1545
   End
   Begin VB.ComboBox cboSizeType 
      Height          =   315
      Index           =   0
      Left            =   9930
      Style           =   2  'Dropdown List
      TabIndex        =   17
      Top             =   2400
      Width           =   1365
   End
   Begin VB.ComboBox cboSize 
      Height          =   315
      Left            =   8580
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   2010
      Width           =   1365
   End
   Begin VB.TextBox txtSize 
      Alignment       =   1  'Right Justify
      Height          =   315
      Index           =   0
      Left            =   8580
      TabIndex        =   16
      Top             =   2400
      Width           =   1305
   End
   Begin VB.ComboBox cboSizeType 
      Height          =   315
      Index           =   1
      Left            =   9930
      Style           =   2  'Dropdown List
      TabIndex        =   19
      Top             =   2760
      Width           =   1365
   End
   Begin VB.TextBox txtSize 
      Alignment       =   1  'Right Justify
      Height          =   315
      Index           =   1
      Left            =   8580
      TabIndex        =   18
      Top             =   2760
      Width           =   1305
   End
   Begin VB.CheckBox chkRefreshListView 
      Caption         =   "Refresh ListView (slower)"
      Height          =   195
      Left            =   1530
      TabIndex        =   10
      Top             =   2610
      Width           =   2205
   End
   Begin VB.PictureBox Picture1 
      Align           =   1  'Align Top
      BackColor       =   &H00FFFFFF&
      Height          =   630
      Left            =   0
      ScaleHeight     =   570
      ScaleWidth      =   14430
      TabIndex        =   22
      Top             =   0
      Width           =   14490
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Single File solution to quickly add file processing to any Utility Project."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Left            =   1260
         TabIndex        =   25
         Top             =   300
         Width           =   6015
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "A High Performance API file/folder scanner Class."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Left            =   1260
         TabIndex        =   24
         Top             =   60
         Width           =   4260
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Description:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   90
         TabIndex        =   23
         Top             =   60
         Width           =   1035
      End
   End
   Begin VB.CheckBox chkCopyMemory 
      Caption         =   "Use CopyMemory (display Date && Size)"
      Height          =   195
      Left            =   1530
      TabIndex        =   11
      Top             =   2850
      Width           =   3465
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   4740
      Left            =   45
      TabIndex        =   21
      Top             =   3210
      Width           =   11910
      _ExtentX        =   21008
      _ExtentY        =   8361
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.CheckBox chkSort 
      Caption         =   "Sort Files(A-Z) while Scanning"
      Height          =   195
      Left            =   1530
      TabIndex        =   9
      Top             =   2310
      Value           =   1  'Checked
      Width           =   2535
   End
   Begin VB.CommandButton cmdScan 
      Caption         =   "Scan"
      Default         =   -1  'True
      Height          =   825
      Left            =   11040
      Picture         =   "ScanPathDemo.frx":12CC
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   705
      Width           =   810
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Index           =   0
      Left            =   5940
      TabIndex        =   13
      Top             =   2400
      Width           =   1545
      _ExtentX        =   2725
      _ExtentY        =   556
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   20316161
      CurrentDate     =   37299
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Index           =   1
      Left            =   5940
      TabIndex        =   14
      Top             =   2760
      Width           =   1545
      _ExtentX        =   2725
      _ExtentY        =   556
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   20316161
      CurrentDate     =   37296
   End
   Begin VB.Label Label21 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Sort 02"
      Height          =   240
      Left            =   11040
      TabIndex        =   49
      Top             =   1875
      Width           =   810
   End
   Begin VB.Label Label20 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Sort 01"
      Height          =   240
      Left            =   11040
      TabIndex        =   48
      Top             =   1605
      Width           =   810
   End
   Begin VB.Label Label19 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Remaining"
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   6840
      TabIndex        =   47
      Top             =   1575
      Width           =   1365
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   8445
      TabIndex        =   46
      Top             =   1575
      Width           =   1590
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Count"
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   6840
      TabIndex        =   45
      Top             =   720
      Width           =   1365
   End
   Begin VB.Label Label16 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Counting"
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   6840
      TabIndex        =   44
      Top             =   1005
      Width           =   1365
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Deleted"
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   6840
      TabIndex        =   43
      Top             =   1290
      Width           =   1365
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   8445
      TabIndex        =   42
      Top             =   1290
      Width           =   1590
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   8445
      TabIndex        =   41
      Top             =   1005
      Width           =   1590
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "Date/Size Filter:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   5130
      TabIndex        =   38
      Top             =   1590
      Width           =   1410
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "Options:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   1530
      TabIndex        =   30
      Top             =   1590
      Width           =   720
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Mask"
      Height          =   195
      Left            =   90
      TabIndex        =   28
      Top             =   1140
      Width           =   390
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Path"
      Height          =   195
      Left            =   90
      TabIndex        =   26
      Top             =   810
      Width           =   330
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Attributes:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   90
      TabIndex        =   29
      Top             =   1590
      Width           =   885
   End
   Begin VB.Label lblSize 
      AutoSize        =   -1  'True
      Caption         =   "Min"
      Height          =   195
      Index           =   0
      Left            =   7770
      TabIndex        =   35
      Top             =   2460
      Width           =   255
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "File Size"
      Height          =   195
      Left            =   7770
      TabIndex        =   33
      Top             =   2040
      Width           =   585
   End
   Begin VB.Label lblSize 
      AutoSize        =   -1  'True
      Caption         =   "Max"
      Height          =   195
      Index           =   1
      Left            =   7770
      TabIndex        =   37
      Top             =   2820
      Width           =   300
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "From"
      Height          =   195
      Left            =   5130
      TabIndex        =   34
      Top             =   2460
      Width           =   345
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "File Date"
      Height          =   195
      Left            =   5130
      TabIndex        =   32
      Top             =   2040
      Width           =   630
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "To"
      Height          =   195
      Left            =   5130
      TabIndex        =   36
      Top             =   2760
      Width           =   195
   End
   Begin VB.Label lblCount 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   8445
      TabIndex        =   31
      Top             =   720
      Width           =   1590
   End
End
Attribute VB_Name = "ScanPath"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'AutoPix

'Put This in a Bas Mobule
Public m_CRC As clsCRC
Public WxHex$, ID$

'Put in Sub Of Code
'Set m_CRC = New clsCRC
'm_CRC.Algorithm = CRC32
'WxHex$ = Hex(m_CRC.CalculateString(Form3.Text1.Text))
'WxHex$ = Hex(m_CRC.CalculateFile(Filename))


'Option Explicit

'##############################################################################################
'Purpose:   This project is a Demo for my cScanPath Class

'           This Class scans a specified path and returns the files it finds.
'           It has fairly comprehensive Filters. You can select files by:
'           Attributes (Normal, Hidden, Read Only, System etc)
'           File Size (>, <, Range)
'           File Date (From, To, Range)
'           File Extensions (multiple allowed i.e. *.txt;*.dat;*.tmp)

'           You can optionally scan sub-folders

'           To keep the demo simple I have only used attributes & Extensions
'           for Filter. For full example of this Class see WipeIt3 submission
       
'Author:    Richard Mewett �2005
'##############################################################################################

Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (hpvDest As Any, hpvSource As Any, ByVal cbCopy As Long)
Private Declare Function LockWindowUpdate Lib "user32" (ByVal hwndLock As Long) As Long

'We must declare with WithEvents to process the files returned
Private WithEvents SP As cScanPath
Attribute SP.VB_VarHelpID = -1





Sub AutoPix()

Dim fs22
Set fs22 = CreateObject("Scripting.FileSystemObject")



'Put in Sub Of Code
Set m_CRC = New clsCRC
m_CRC.Algorithm = CRC32
'WxHex$ = Hex(m_CRC.CalculateString(Form3.Text1.Text))
'WxHex$ = Hex(m_CRC.CalculateFile(Filename))

txtPath.Text = "D:\VB6 Icons\Ripped"
txtPath = "M:\00 Archive Work"
txtPath = "M:\00 Installs"

If Right$(txtPath, 1) <> "\" Then txtPath.Text = txtPath.Text + "\"
chkSubFolders.Value = vbChecked
cboMask.Text = "*.*"

'GoTo jumphere

Call cmdScan_Click
    
a1$ = ListView1.ListItems.Item(1).SubItems(1)
ID$ = Mid$(a1$, Len(txtPath) + 1)
ID$ = Mid$(ID$, 1, InStr(ID$, "\"))

Dim OnlyIfSameName
OnlyIfSameName = True
    
    ListView1.SortOrder = lvwAscending
    ListView1.Sorted = True        'Use default sorting to sort the
    ListView1.SortKey = 0
    ii = ListView1.ListItems.Count

'Exit Sub

If OnlyIfSameName = True Then
tt = 1
For we = ListView1.ListItems.Count To 3 Step -1
    Label13.Caption = Str(we)
    DoEvents
    a1$ = ListView1.ListItems.Item(we - 2).SubItems(1)
    b1$ = LCase(ListView1.ListItems.Item(we - 2))
    a2$ = ListView1.ListItems.Item(we - 1).SubItems(1)
    b2$ = LCase(ListView1.ListItems.Item(we - 1))
    a3$ = ListView1.ListItems.Item(we).SubItems(1)
    b3$ = LCase(ListView1.ListItems.Item(we))
    
    On Error Resume Next
    Err.Clear
    Set ff1 = fs22.GetFile(a1$ + ListView1.ListItems.Item(we - 2))
    Set ff2 = fs22.GetFile(a2$ + ListView1.ListItems.Item(we - 1))
    Set ff3 = fs22.GetFile(a3$ + ListView1.ListItems.Item(we))
    exiterr = Err.Number
    On Error GoTo 0
    

    
    topp = 0
    If b2$ <> b1$ And b2$ <> b3$ Then
        topp = 1
        ListView1.ListItems.Remove (we - 1)
        ScanPath.lblCount = ListView1.ListItems.Count
    End If
    If exiterr = 0 And topp = 0 And ff2.Size <> ff1.Size And ff2.Size <> ff3.Size Then
        ListView1.ListItems.Remove (we - 1)
        ScanPath.lblCount = ListView1.ListItems.Count
    End If
    
    
    
    Next
End If
we = ListView1.ListItems.Count
b2$ = LCase(ListView1.ListItems.Item(we - 1))
b3$ = LCase(ListView1.ListItems.Item(we))
If b2$ <> b3$ Then
    ListView1.ListItems.Remove (we)
    ScanPath.lblCount = ListView1.ListItems.Count
End If
we = 1
b2$ = LCase(ListView1.ListItems.Item(we + 1))
b3$ = LCase(ListView1.ListItems.Item(we))
If b2$ <> b3$ Then
    ListView1.ListItems.Remove (we)
    ScanPath.lblCount = ListView1.ListItems.Count
End If


'Exit Sub

For we = 1 To ListView1.ListItems.Count
    DoEvents
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)
    
    WxHex$ = Space$(8)
    On Error Resume Next
    LSet WxHex$ = Hex(m_CRC.CalculateFile(a1$ + b1$))
    On Error GoTo 0
    
    'Include filenumber then when sort always first file never deleted
    ListView1.ListItems.Item(we).SubItems(1) = WxHex$ + " - - " + Format$(we, "0000000") + " - - " + a1$
    ListView1.SelectedItem = ListView1.ListItems(we)
    ListView1.SelectedItem.EnsureVisible
    Label13.Caption = Str(we)

Next
    
    ListView1.SortOrder = lvwAscending
    ListView1.Sorted = True        'Use default sorting to sort the
    ListView1.SortKey = 1 ' Sort on Column 2
    ii = ListView1.ListItems.Count
    

For we = 1 To ListView1.ListItems.Count
    DoEvents
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)
'    If b1$ = "Serial.txt" Then Stop
    'a1$ = ListView1.ListItems.Item(we - 10).SubItems(1)
    tf1$ = Mid$(a1$, InStr(a1$, txtPath) + Len(txtPath))
    If InStrRev(tf1$, "\", Len(tf1$) - 1) > 0 Then
        f1$ = Mid$(tf1$, InStrRev(tf1$, "\", Len(tf1$) - 1) + 1)
    Else
        f1$ = "\"
    End If
    
    ListView1.ListItems.Item(we) = f1$ + b1$
    ListView1.SelectedItem = ListView1.ListItems(we)
    ListView1.SelectedItem.EnsureVisible
    Label13.Caption = Str(we)
    
Next

jumphere:

    ListView1.SortOrder = lvwAscending
    ListView1.Sorted = True        'Use default sorting to sort the
    ListView1.SortKey = 1
    ii = ListView1.ListItems.Count

For we = 2 To ListView1.ListItems.Count
    'Exit For
    DoEvents
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = Mid$(ListView1.ListItems.Item(we), InStr(ListView1.ListItems.Item(we), "\") + 1)
    
    
    a12$ = ListView1.ListItems.Item(we - 1).SubItems(1)
    b12$ = Mid$(ListView1.ListItems.Item(we - 1), InStr(ListView1.ListItems.Item(we - 1), "\") + 1)
    If LCase(b1$) <> LCase(b12$) Then xc = 0
    If LCase(b1$) = LCase(b12$) And xc = 0 Then
        xc = we
    End If
    fg = xc - 1
    If xc = 0 Then fg = we - 1
        
'    If we - fg > 1 Then Stop
    
    For we3 = fg To we
    For we4 = fg To we
    DoEvents
    If we4 = we3 Then Exit For
    a1$ = ListView1.ListItems.Item(we3).SubItems(1)
    b1$ = Mid$(ListView1.ListItems.Item(we3), InStr(ListView1.ListItems.Item(we3), "\") + 1)
    
    a12$ = ListView1.ListItems.Item(we4).SubItems(1)
    b12$ = Mid$(ListView1.ListItems.Item(we4), InStr(ListView1.ListItems.Item(we4), "\") + 1)

    If LCase(b1$) <> LCase(b12$) Then Exit For


    tgs = 8 'Just Chk CRC

    g1$ = Mid$(a1$, 1, tgs)
    g3$ = Mid$(a1$, 26)
    
    h1$ = Mid$(a12$, 1, tgs)
    h3$ = Mid$(a12$, 26)

    On Error Resume Next
    'err.number
'    Set ff1 = fs22.GetFile(Mid$(a1$, 26) + b1$)
    If Err.Number > 0 Then
        qb = 0
    End If
'    Set ff2 = fs22.GetFile(Mid$(a12$, 26) + b12$)
    If Err.Number > 0 Then
        qb = 0
    End If
    
    qb = 0
'    If ff1.Size = 0 And ff2.Size = 0 Then
'        qb = 1
'    Else
'    Stop
'    End If
    If Err.Number > 0 Then
        qb = 0
    End If
    On Error GoTo 0
    
    'CRC Check
    If g1$ = h1$ Then
        qb = 1
    End If
        
    If LCase(b1$) <> LCase(b12$) Then qb = 0
    If Trim(g1$) = "" Or Trim(h1$) = "" Then qb = 0
    
    'if sub dir parent from file not same then filter for no del
    If qb = 1 Then
    f1$ = LCase(Mid$(a1$, InStrRev(a1$, "\", Len(a1$) - 1)))
    f2$ = LCase(Mid$(a12$, InStrRev(a12$, "\", Len(a12$) - 1)))
    ww = 0
    If Mid$(ListView1.ListItems.Item(we3), 1, 1) = "\" And _
        Mid$(ListView1.ListItems.Item(we4), 1, 1) = "\" Then ww = 1
    
    'Root folder
    If LCase(f1$) <> LCase(f2$) And ww = 0 Then
        qb = 0
    End If
    End If

    
    
    If InStr(g3$, ID$) > 0 And qb = 1 Then
        g3$ = h3$
    End If
    If InStr(g3$, ID$) > 0 And qb = 1 Then
        qb = 0
    End If
    
    'Exit For
    'qb = 0
    If InStr(LCase(a1$), "_vti_cnf") > 0 Then qb = 1
    If InStr(LCase(a1$), "_vti_pvt") > 0 Then qb = 1
    
    'Make sure none are deleted from same main dir
    'Root folder
    If qb = 1 Then
        tf1$ = Mid$(a1$, InStr(a1$, txtPath) + Len(txtPath))
        f1$ = Mid$(tf1$, 1, InStr(tf1$, "\"))
        tf1$ = Mid$(a12$, InStr(a12$, txtPath) + Len(txtPath))
        f2$ = Mid$(tf1$, 1, InStr(tf1$, "\"))
        If f1$ = f2$ Then
            qb = 0
        End If
    End If
    
    
    
    
    If qb = 1 Then
        
        
        On Error Resume Next
        tagger = 0
        If fs22.FileExists(g3$ + b1$) Then Kill g3$ + b1$: aga = aga + 1: tagger = 1
        If Err.Number > 0 Then
'            MsgBox "Error Deleting"
            Err.Clear
            fs22.DeleteFile g3$ + b1$, True
            aga = aga + 1: tagger = 1
            If Err.Number > 0 Then
'                MsgBox "Cant Delete" + vbCrLf + g3$ + b1$
         End If
        
        Err.Clear
        If tagger = 1 Then
            Set ff1 = fs22.GetFolder(g3$)
            If ff1.Size = 0 And Err.Number = 0 Then
                ff1.Delete True
            End If
        End If
        
        End If
        On Error GoTo 0
        
        Label14.Caption = Str(aga)
        Label13.Caption = Str(ii - aga)
    End If


    
    ListView1.SelectedItem = ListView1.ListItems(we)
    ListView1.SelectedItem.EnsureVisible
    Label13.Caption = Str(we)

Next
Next
Next

MsgBox "End" + vbCrLf + "Deleted =" + Str(aga)
    
'    ListView1.SortOrder = lvwAscending
'    ListView1.Sorted = True        'Use default sorting to sort the
'    ListView1.SortKey = 0
'    ii = ListView1.ListItems.Count

Exit Sub

'End

End Sub
















Private Sub cboSize_Click()
    Select Case cboSize.ListIndex
    Case 0
        lblSize(0).Visible = False
        lblSize(1).Visible = False
        txtSize(0).Visible = False
        txtSize(1).Visible = False
        cboSizeType(0).Visible = False
        cboSizeType(1).Visible = False
    Case 1, 2
        lblSize(0).Caption = "Size"
        lblSize(0).Visible = True
        lblSize(1).Visible = False
        txtSize(0).Visible = True
        txtSize(1).Visible = False
        cboSizeType(0).Visible = True
        cboSizeType(1).Visible = False
    Case Else
        lblSize(0).Caption = "Min"
        lblSize(1).Caption = "Max"
        lblSize(1).Visible = True
        lblSize(0).Visible = True
        txtSize(0).Visible = True
        txtSize(1).Visible = True
        cboSizeType(0).Visible = True
        cboSizeType(1).Visible = True
    End Select
End Sub


Private Sub chkCopyMemory_Click()
    chkSort.Enabled = (chkCopyMemory.Value = vbUnchecked)
    
    With ListView1
        If chkCopyMemory.Value Then
            .ColumnHeaders("PATH").Width = 5000
            .ColumnHeaders("SIZE").Width = 1250
            .ColumnHeaders("DATE").Width = 1750
        Else
            .ColumnHeaders("PATH").Width = 8000
            .ColumnHeaders("SIZE").Width = 0
            .ColumnHeaders("DATE").Width = 0
        End If
    End With
End Sub


Private Sub chkSort_Click()
    chkCopyMemory.Enabled = (chkSort.Value = vbUnchecked)
End Sub

Private Sub cmdBrowse_Click()
    txtPath.Text = GetFolder(Me.hWnd, "Scan Path:", txtPath.Text)
    fg1 = FreeFile
    Open App.Path + "\Scan Path.txt" For Output As #fg1
    Print #fg1, txtPath.Text
    Close #fg1

'    fg1 = FreeFile
'    Open App.Path + "\Scan Path.txt" For Input As #fg1
'    Line Input #fg1, ae$
'    Close #fg1
'    txtPath.Text = ae$



End Sub

Private Sub cmdHelp_Click()
    'txtHelp.Visible = Not txtHelp.Visible
End Sub

Private Sub cmdScan_Click()
    Dim lCount As Long
    Dim lSize(1) As Long
    
    
    
    If cmdScan.Caption = "Scan" Then
        '####################################################################################################
        'Process our Selection Criteria
        For lCount = 0 To 1
            lSize(lCount) = Val(txtSize(lCount).Text)
        
            Select Case cboSizeType(lCount).ListIndex
            Case 1: lSize(lCount) = lSize(lCount) * 1024
            Case 2: lSize(lCount) = (lSize(lCount) * 1024) * 1024
            End Select
        Next lCount
            
        If txtSize(1).Visible Then
            If lSize(0) = 0 Then
                MsgBox "Maximium Size value must exceed 0", vbExclamation
                txtSize(1).SetFocus
                Exit Sub
            ElseIf lSize(1) <= lSize(0) Then
                MsgBox "Maximium Size value must exceed Minimum Size", vbExclamation
                txtSize(1).SetFocus
                Exit Sub
            End If
        End If
        
        '####################################################################################################
        'Reset Form
        cmdScan.Caption = "Stop"
        
        lblCount.Caption = "-"
 
        Screen.MousePointer = vbHourglass
        ListView1.ListItems.Clear
        
        If chkRefreshListView.Value = vbUnchecked Then
            LockWindowUpdate ListView1.hWnd
        End If
        
        '####################################################################################################
        'Create our Scan Object
        Set SP = New cScanPath
        
        With SP
            'Attributes
            .Archive = chkArchive.Value
            .Compressed = True
            .Hidden = chkHidden.Value
            .Normal = chkNormal.Value
            .ReadOnly = chkReadOnly.Value
            .System = chkSystem.Value
            
            'Date/Size (NOTE: you don't have to use these!)
            Select Case cboDate.ListIndex
            Case 0
                .DateType = Modified
            Case 1
                .DateType = Created
            Case 2
                .DateType = LastAccessed
            End Select
            
            If IsDate(DTPicker1(0).Value) Then
                .FromDate = DTPicker1(0).Value
            End If
            If IsDate(DTPicker1(1).Value) Then
                .ToDate = DTPicker1(1).Value
            End If
            
            Select Case cboSize.ListIndex
            Case 1
                .MaximumSize = lSize(0)
            Case 2
                .MinimumSize = lSize(0)
            Case 3
                .MinimumSize = lSize(0)
                .MaximumSize = lSize(1)
            End Select
            
            'Mask
            .Filter = cboMask.Text
            
            'Go - that was easy wasn't it!
            .StartScan txtPath, chkSubFolders.Value, chkSort.Value And chkSort.Enabled, chkPatternMatching
        End With
        
       With ListView1
            If .ListItems.Count > 0 Then
                .SelectedItem = .ListItems(1)
            End If
            
            lblCount.Caption = .ListItems.Count
        End With
        
        LockWindowUpdate 0
        
        'cmdScan.Caption = "Scan"
        Screen.MousePointer = vbDefault
    Else
        'User want's to stop current scan
        SP.StopScan
        End
    End If



'End
'If Command$ <> "" Then End
cmdScan.Caption = "Scan"
End Sub



Private Sub Form_Load()
    
ScanPath.Caption = ScanPath.Caption + " -- " + App.EXEName
  
ScanPath.Height = ListView1.Top + ListView1.Height + 450
ScanPath.Width = ListView1.Width + 210
  
  
    
    Dim lCount As Long
    
    With cboMask
        .AddItem "*.*"
        .AddItem "*.dll;*.exe;*.ocx"
        .AddItem "*.doc;*.mdb;*.xls"
        .AddItem "*.bmp;*.gif;*.jpg;*.tif"
        .AddItem "*.bas;*.cls;*.ctl;*.frm;*.vbp"
        .ListIndex = 0
    End With
    
    DTPicker1(0).Value = DateSerial(Year(Now), Month(Now) - 3, Day(Now))
    DTPicker1(1).Value = Now
    
    DTPicker1(0).Value = Empty
    DTPicker1(1).Value = Empty
    
    With cboDate
        .AddItem "Modified"
        .AddItem "Created"
        .AddItem "Last Accessed"
        .ListIndex = 0
    End With
    
    With cboSize
        .AddItem "Any Size"
        .AddItem "Less Than"
        .AddItem "Greater Than"
        .AddItem "Between"
        .ListIndex = 0
    End With
        
    For lCount = 0 To 1
        With cboSizeType(lCount)
            .AddItem "Bytes"
            .AddItem "Kilobytes"
            .AddItem "Megabytes"
            .ListIndex = 1
        End With
    Next lCount
    
    With ListView1
        .ColumnHeaders.Add , "FILE", "File", 3000, lvwColumnLeft
        .ColumnHeaders.Add , "PATH", "Path", 8000, lvwColumnLeft
        .ColumnHeaders.Add , "SIZE", "Size", 0, lvwColumnRight
        .ColumnHeaders.Add , "DATE", "Date", 0, lvwColumnLeft
        
        .View = lvwReport
    End With

ScanPath.Show

Call AutoPix

Exit Sub

End Sub


Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub List1_Click()

Exit Sub

Dim fs22
Set fs22 = CreateObject("Scripting.FileSystemObject")


tpath3$ = "E:\04 Music ---\Del\"

b1$ = Mid$(List1.List(List1.ListIndex), 14)
c1$ = b1$ + "--Todel"

'tpath1$ = "E:\04 Music ---\"

c1$ = Mid$(b1$, InStrRev(b1$, "\") + 1)
List1.RemoveItem (List1.ListIndex)
'Name b1$ As c1$

'fs22.copyFile b1$, tpath3$ + c1$
If Dir$(tpath3$ + c1$) <> "" Then Kill tpath3$ + c1$
fs22.moveFile b1$, tpath3$ + c1$



End Sub

Private Sub Label20_Click()
    ListView1.SortOrder = lvwAscending
    ListView1.Sorted = True        'Use default sorting to sort the
    ListView1.SortKey = 0
    ii = ListView1.ListItems.Count

'Call AutoPix

End Sub

Private Sub Label21_Click()

    ListView1.SortOrder = lvwAscending
    ListView1.Sorted = True        'Use default sorting to sort the
    ListView1.SortKey = 1
    ii = ListView1.ListItems.Count

End Sub

Private Sub SP_DirMatch(Directory As String, Path As String)
    '####################################################################################################
    'This Event fires for each Folder found
    '####################################################################################################
End Sub

Private Sub SP_FileMatch(fileName As String, Path As String)
    Dim LV As ListItem
    Dim uWIN32 As WIN32_FIND_DATA
    
    '####################################################################################################
    'This Event fires for each File found
    '####################################################################################################
    
    On Local Error GoTo GetFileError
    
    With ListView1
        Set LV = .ListItems.Add(, , fileName)
        LV.SubItems(1) = Path
        
        
        
        
        
        
        
        
        
        If chkCopyMemory.Value Then
            'VB does not allows UDT's to be passed directly from a Class but we can access the structure
            'using pointers. We use CopyMemory to place the WIN32_FIND_DATA variable from the Class into
            'the uWIN32 declared in this Sub.
            
            'This is primarily a speed trick - we could retrieve the date & time information "ourselves"
            'using the standard VB functions or an API call but since we already have it...
            CopyMemory ByVal uWIN32, ByVal SP.WFDPointer, ByVal Len(uWIN32)
            LV.SubItems(2) = uWIN32.nFileSizeLow
            LV.SubItems(3) = FormatFileDate(uWIN32.ftLastAccessTime)
        End If
        
        'Refresh Count & Scroll the list every 10th file
        If (LV.Index Mod 10) = 0 Then
            If chkRefreshListView.Value Then
                .SelectedItem = LV
                .SelectedItem.EnsureVisible
            End If
            
            lblCount.Caption = LV.Index
        End If
    End With
    Exit Sub

GetFileError:
    MsgBox Err.Description, vbCritical
End Sub



Private Function FormatFileDate(CT As FILETIME) As String
    Const SHORT_DATE = "Short Date"
    
    Dim ST As SYSTEMTIME
    Dim ds As Single
       
    If FileTimeToSystemTime(CT, ST) Then
          ds = DateSerial(ST.wYear, ST.wMonth, ST.wDay)
          
          FormatFileDate = Format$(ds, SHORT_DATE)
    End If
End Function

Private Sub Timer1_Timer()
'End
End Sub














Sub Jeepers()


Dim fs22

Set fs22 = CreateObject("Scripting.FileSystemObject")

On Local Error GoTo jeep
Drived2$ = Mid$(txtPath.Text, 1, 3)
MkDir Drived2$ + "Temp\Anything"
v1$ = Mid$(txtPath.Text, InStrRev(txtPath.Text, "\"))

MkDir Drived2$ + "Temp\Anything" + v1$
On Local Error GoTo 0

List1.AddItem "Stage 1 of 2 : Make Dir's And Move Files to Temp"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For we = 1 To ListView1.ListItems.Count
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(txtPath.Text)
    c1$ = Drived2$ + "Temp\Anything" + v1$ + "\" + Mid$(a1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, c1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        d2$ = Mid$(c1$, 1, ets2)

        If InStr(f1$, d2$) = 0 Then
            On Local Error GoTo jeep
            MkDir d2$
            If errs2 <> 75 And errs2 > 0 Then
                MsgBox ("Error Making Temp Directory")
                Stop
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    f1$ = d2$

    'Dim Fs22
    'Set Fs22 = CreateObject("Scripting.FileSystemObject")
    errs2 = 0
    On Local Error GoTo jeep
    fs22.moveFile a1$ + b1$, c1$ + b1$
    On Local Error GoTo 0

    If errs2 <> 0 Then
        MsgBox ("Error Moving File to Temp")
        End
    End If

    List1.AddItem Format$(we, "000 ") + "Move > " + a1$ + b1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'Fs22.DeleteFolder comrad$ + "\" + WFD$

Next

Err.Clear
On Local Error Resume Next
Set fs22 = CreateObject("Scripting.FileSystemObject")
fs22.deletefolder txtPath.Text, True
If Err.Number > 0 Then Call HardDel
On Local Error GoTo 0


List1.AddItem "----------------------------------------"
List1.AddItem "Stage 2 of 2 : Move Files Back From Temp"
List1.AddItem "----------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

v2$ = Mid$(txtPath.Text, 1, InStrRev(txtPath.Text, "\"))

Err.Clear
On Local Error Resume Next
Set fs22 = CreateObject("Scripting.FileSystemObject")
fs22.Movefolder Drived2$ + "Temp\Anything\*", v2$
If Err.Number > 0 Then Call HardMove
On Local Error GoTo 0

List1.AddItem "Stage 2 of 2 : Complete --------------"
List1.AddItem "--------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

'Timer1.Enabled = True

Exit Sub
jeep:
errs2 = Err.Number
errs3$ = Err.Description
Resume Next

End Sub



Sub HardDel()
Dim fs22

Set fs22 = CreateObject("Scripting.FileSystemObject")

Drived2$ = Mid$(txtPath.Text, 1, 3)
v1$ = Mid$(txtPath.Text, InStrRev(txtPath.Text, "\"))


List1.AddItem "Stage Opp : Del Original Dir"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For we = 1 To ListView1.ListItems.Count
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(txtPath.Text)
    c1$ = Drived2$ + "My Music" + v1$ + "\" + Mid$(a1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, c1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        d2$ = Mid$(c1$, 1, ets2 - 1)

        If InStr(f1$, d2$) = 0 Then
            Err.Clear
            On Local Error Resume Next
            'MkDir d2$
            fs22.deletefolder d2$, True
            If Err.Number <> 75 And Err.Number > 0 Then
                'MsgBox ("Error Making Temp Directory")
                'Stop
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    f1$ = d2$

    errs2 = 0
    On Local Error Resume Next
'    Fs22.DeleteFile a1$ + b1$, True
    On Local Error GoTo 0

    'If errs2 <> 0 Then
    '    MsgBox ("Error Moving File to Temp")
    '    End
    'End If

    List1.AddItem Format$(we, "000 ") + "Move > " + a1$ + b1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'Fs22.DeleteFolder comrad$ + "\" + WFD$

Next

a = a
jeep:
End Sub


Sub HardMove()
Dim fs22

Set fs22 = CreateObject("Scripting.FileSystemObject")

Drived2$ = Mid$(txtPath.Text, 1, 3)
v1$ = Mid$(txtPath.Text, InStrRev(txtPath.Text, "\"))


List1.AddItem "Stage Opp : Del Original Dir"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For we = 1 To ListView1.ListItems.Count
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(txtPath.Text)
    c1$ = Drived2$ + "My Music" + v1$ + "\" + Mid$(a1$, ets1 + 2)
    c2$ = Drived2$ + "Temp\Anything" + v1$ + "\" + Mid$(a1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, c1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        d2$ = Mid$(c1$, 1, ets2 - 1)

        If InStr(f1$, d2$) = 0 Then
            Err.Clear
            On Local Error Resume Next
            MkDir d2$
   '         Fs22.deletefolder d2$, True
            If Err.Number <> 75 And Err.Number > 0 Then
                'MsgBox ("Error Making Temp Directory")
                'Stop
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    f1$ = d2$
    Err.Clear
    errs2 = 0
    On Local Error Resume Next
    Set fs22 = CreateObject("Scripting.FileSystemObject")
    fs22.moveFile c2$ + b1$, a1$ + b1$
    'err.number
    'err.description
    On Local Error GoTo 0

    'If errs2 <> 0 Then
    '    MsgBox ("Error Moving File to Temp")
    '    End
    'End If

    List1.AddItem Format$(we, "000 ") + "Move > " + a1$ + b1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'Fs22.DeleteFolder comrad$ + "\" + WFD$

Next
    
    v1$ = Mid$(txtPath.Text, 1, InStrRev(txtPath.Text, "\") - 1)
    Err.Clear
    On Local Error Resume Next
    Set fs22 = CreateObject("Scripting.FileSystemObject")
    fs22.copyfolder Drived2$ + "Temp\Anything", v1$, True
    
    Set fs22 = CreateObject("Scripting.FileSystemObject")
    fs22.deletefolder Drived2$ + "Temp\Anything", True


jeep:
End Sub

