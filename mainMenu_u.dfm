object frmMainMenu: TfrmMainMenu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Main Menu | TournyMan'
  ClientHeight = 284
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object lblWelcome: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 30
    Caption = 'Welcome,'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnTournamentView: TButton
    Left = 8
    Top = 56
    Width = 270
    Height = 33
    Caption = 'View Tournaments'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnTournamentViewClick
  end
  object btnManagePlayers: TButton
    Left = 8
    Top = 95
    Width = 270
    Height = 33
    Caption = 'Manage Players'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnManagePlayersClick
  end
  object btnCreateTournament: TButton
    Left = 8
    Top = 134
    Width = 270
    Height = 33
    Caption = 'Create a tournament'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnCreateTournamentClick
  end
  object btnManageTournament: TButton
    Left = 8
    Top = 173
    Width = 270
    Height = 33
    Caption = 'Manage your tournaments'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnManageTournamentClick
  end
  object btnAdminScreen: TButton
    Left = 8
    Top = 212
    Width = 270
    Height = 33
    Caption = 'Admin Screen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
