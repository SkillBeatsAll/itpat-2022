object frmManagePlayers: TfrmManagePlayers
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Manage Players | TournyMan'
  ClientHeight = 508
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 361
    Height = 193
    DataSource = dmTournament.dsPlayers
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'PlayerID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FirstName'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LastName'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GamesWon'
        Width = 69
        Visible = True
      end>
  end
  object grpAddPlayer: TGroupBox
    Left = 8
    Top = 351
    Width = 357
    Height = 105
    Caption = 'Add a Player'
    TabOrder = 1
    object ledtFirstName: TLabeledEdit
      Left = 75
      Top = 24
      Width = 121
      Height = 23
      EditLabel.Width = 60
      EditLabel.Height = 15
      EditLabel.Caption = 'First Name:'
      LabelPosition = lpLeft
      TabOrder = 0
      Text = ''
    end
    object ledtLastName: TLabeledEdit
      Left = 75
      Top = 61
      Width = 121
      Height = 23
      EditLabel.Width = 59
      EditLabel.Height = 15
      EditLabel.Caption = 'Last Name:'
      LabelPosition = lpLeft
      TabOrder = 1
      Text = ''
    end
    object btnAddPlayer: TButton
      Left = 224
      Top = 32
      Width = 121
      Height = 57
      Caption = 'Add Player'
      TabOrder = 2
      OnClick = btnAddPlayerClick
    end
  end
  object grpPlayerDetails: TGroupBox
    Left = 8
    Top = 207
    Width = 357
    Height = 124
    Caption = 'Player Details'
    TabOrder = 2
    object Label1: TLabel
      Left = 104
      Top = 9
      Width = 208
      Height = 15
      Caption = 'Click on a player above to populate this'
    end
    object ledtShowFirstName: TLabeledEdit
      Left = 75
      Top = 59
      Width = 121
      Height = 23
      EditLabel.Width = 60
      EditLabel.Height = 15
      EditLabel.Caption = 'First Name:'
      LabelPosition = lpLeft
      ReadOnly = True
      TabOrder = 0
      Text = ''
    end
    object ledtShowLastName: TLabeledEdit
      Left = 75
      Top = 88
      Width = 121
      Height = 23
      EditLabel.Width = 59
      EditLabel.Height = 15
      EditLabel.Caption = 'Last Name:'
      LabelPosition = lpLeft
      ReadOnly = True
      TabOrder = 1
      Text = ''
    end
    object ledtShowPlayerID: TLabeledEdit
      Left = 75
      Top = 30
      Width = 46
      Height = 23
      Alignment = taCenter
      EditLabel.Width = 49
      EditLabel.Height = 15
      EditLabel.Caption = 'Player ID:'
      LabelPosition = lpLeft
      ReadOnly = True
      TabOrder = 2
      Text = ''
    end
    object ledtShowGamesWon: TLabeledEdit
      Left = 299
      Top = 30
      Width = 46
      Height = 23
      Alignment = taCenter
      EditLabel.Width = 67
      EditLabel.Height = 15
      EditLabel.Caption = 'Games Won:'
      LabelPosition = lpLeft
      ReadOnly = True
      TabOrder = 3
      Text = ''
    end
    object btnDeletePlayer: TButton
      Left = 224
      Top = 59
      Width = 121
      Height = 54
      Caption = 'Delete Player'
      TabOrder = 4
      OnClick = btnDeletePlayerClick
    end
  end
  object btnExportPlayers: TButton
    Left = 192
    Top = 462
    Width = 173
    Height = 41
    Caption = 'Export Players'
    TabOrder = 3
    OnClick = btnExportPlayersClick
  end
  object redOutput: TRichEdit
    Left = 248
    Top = 337
    Width = 42
    Height = 16
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object btnImportPlayers: TButton
    Left = 8
    Top = 462
    Width = 178
    Height = 41
    Caption = 'Import Players'
    TabOrder = 5
    OnClick = btnImportPlayersClick
  end
end
