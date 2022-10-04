object dmTournament: TdmTournament
  OnCreate = DataModuleCreate
  Height = 394
  Width = 463
  PixelsPerInch = 96
  object dbmTourny: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=.\ass' +
      'ets\database\tournamentDB.mdb;Mode=Share Deny None;Persist Secur' +
      'ity Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry P' +
      'ath="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Je' +
      't OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Op' +
      's=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database ' +
      'Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Enc' +
      'rypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False' +
      ';Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=Fa' +
      'lse'
    LoginPrompt = False
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
