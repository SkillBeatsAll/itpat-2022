object frmAdminScreen: TfrmAdminScreen
  Left = 0
  Top = 0
  Caption = 'Admin Screen | TournyMan'
  ClientHeight = 480
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 740
    Height = 464
    ActivePage = Players
    TabOrder = 0
    object Players: TTabSheet
      Caption = 'Players'
      object DBGrid1: TDBGrid
        Left = 3
        Top = 0
        Width = 726
        Height = 400
        DataSource = dmTournament.dsPlayers
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 406
        Width = 720
        Height = 25
        DataSource = dmTournament.dsPlayers
        TabOrder = 1
      end
    end
    object Games: TTabSheet
      Caption = 'Games'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 3
        Top = 0
        Width = 726
        Height = 402
        DataSource = dmTournament.dsGames
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBNavigator4: TDBNavigator
        Left = 3
        Top = 408
        Width = 720
        Height = 25
        DataSource = dmTournament.dsGames
        TabOrder = 1
      end
    end
    object GameResults: TTabSheet
      Caption = 'GameResults'
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 3
        Top = 0
        Width = 726
        Height = 402
        DataSource = dmTournament.dsGameResults
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBNavigator2: TDBNavigator
        Left = 3
        Top = 408
        Width = 720
        Height = 25
        DataSource = dmTournament.dsGameResults
        TabOrder = 1
      end
    end
    object Credentials: TTabSheet
      Caption = 'Credentials'
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 3
        Top = 0
        Width = 726
        Height = 403
        DataSource = dmTournament.dsCredentials
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBNavigator3: TDBNavigator
        Left = 3
        Top = 409
        Width = 720
        Height = 25
        DataSource = dmTournament.dsCredentials
        TabOrder = 1
      end
    end
  end
end
