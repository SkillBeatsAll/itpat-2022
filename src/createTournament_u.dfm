object frmCreateTournament: TfrmCreateTournament
  Left = 0
  Top = 0
  HelpContext = 8
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Create a tournament | TournyMan'
  ClientHeight = 420
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 102
    Height = 15
    Caption = 'Tournament Name:'
  end
  object Label2: TLabel
    Left = 160
    Top = 8
    Width = 86
    Height = 15
    Caption = 'Select start date:'
  end
  object Label3: TLabel
    Left = 280
    Top = 10
    Width = 40
    Height = 15
    Caption = 'Players:'
  end
  object Label4: TLabel
    Left = 350
    Top = 10
    Width = 108
    Height = 15
    Caption = 'Time per Match (m):'
  end
  object Label5: TLabel
    Left = 16
    Top = 104
    Width = 53
    Height = 15
    Caption = 'Player List'
  end
  object Label6: TLabel
    Left = 248
    Top = 104
    Width = 116
    Height = 15
    Caption = 'Players in tournament'
  end
  object grpPlayerLists: TGroupBox
    Left = 6
    Top = 80
    Width = 459
    Height = 297
    Caption = 'Select players for your tournament'
    TabOrder = 3
  end
  object edtTournamentName: TEdit
    Left = 16
    Top = 31
    Width = 121
    Height = 23
    MaxLength = 20
    TabOrder = 0
  end
  object lstInTournament: TListBox
    Left = 248
    Top = 120
    Width = 207
    Height = 246
    DragMode = dmAutomatic
    ItemHeight = 15
    TabOrder = 1
    OnDragDrop = lstInTournamentDragDrop
    OnDragOver = lstInTournamentDragOver
  end
  object lstPlayers: TListBox
    Left = 16
    Top = 120
    Width = 209
    Height = 246
    DragMode = dmAutomatic
    ItemHeight = 15
    TabOrder = 2
    OnDragDrop = lstPlayersDragDrop
    OnDragOver = lstPlayersDragOver
  end
  object startDate: TDateTimePicker
    Left = 160
    Top = 31
    Width = 97
    Height = 23
    Date = 44798.000000000000000000
    Time = 0.744122754629643200
    TabOrder = 4
  end
  object edtPlayers: TEdit
    Left = 280
    Top = 31
    Width = 55
    Height = 23
    Enabled = False
    TabOrder = 5
    Text = '8'
  end
  object btnCreateTournament: TButton
    Left = 6
    Top = 383
    Width = 459
    Height = 34
    Caption = 'Create Tournament'
    TabOrder = 6
    OnClick = btnCreateTournamentClick
  end
  object edtTimeMinutes: TEdit
    Left = 352
    Top = 31
    Width = 55
    Height = 23
    NumbersOnly = True
    TabOrder = 7
    TextHint = 'minutes'
  end
end
