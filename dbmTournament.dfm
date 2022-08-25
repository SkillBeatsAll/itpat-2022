object dmTournament: TdmTournament
  Height = 394
  Width = 463
  PixelsPerInch = 96
  object dbmTourny: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=tourn' +
      'ament demo 4 - filled.mdb;Mode=Share Deny None;Persist Security ' +
      'Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path=' +
      '"";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OL' +
      'EDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;' +
      'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Pass' +
      'word="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt' +
      ' Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet' +
      ' OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 144
  end
  object tblGames: TADOTable
    Active = True
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
    Active = True
    Connection = dbmTourny
    CursorType = ctStatic
    TableName = 'tblGameResults'
    Left = 112
    Top = 96
  end
  object tblPlayers: TADOTable
    Active = True
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
    Active = True
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
