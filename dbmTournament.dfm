object dmTournament: TdmTournament
  OnCreate = DataModuleCreate
  Height = 394
  Width = 463
  PixelsPerInch = 96
  object dbmTourny: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=tournamentDB.mdb;Pe' +
      'rsist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 144
  end
  object tblGames: TADOTable
    Connection = dbmTourny
    CursorType = ctStatic
    TableName = 'tblGames'
    Left = 112
    Top = 24
  end
  object dsGames: TDataSource
    DataSet = tblGames
    Left = 192
    Top = 24
  end
  object tblGameResults: TADOTable
    Connection = dbmTourny
    CursorType = ctStatic
    TableName = 'tblGameResults'
    Left = 112
    Top = 96
  end
  object tblPlayers: TADOTable
    Connection = dbmTourny
    CursorType = ctStatic
    TableName = 'tblPlayers'
    Left = 112
    Top = 176
  end
  object dsGameResults: TDataSource
    DataSet = tblGameResults
    Left = 192
    Top = 96
  end
  object dsPlayers: TDataSource
    DataSet = tblPlayers
    Left = 192
    Top = 176
  end
  object tblCredentials: TADOTable
    Connection = dbmTourny
    CursorType = ctStatic
    TableName = 'tblCredentials'
    Left = 112
    Top = 248
  end
  object dsCredentials: TDataSource
    DataSet = tblCredentials
    Left = 192
    Top = 248
  end
end
