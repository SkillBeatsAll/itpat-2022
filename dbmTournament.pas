unit dbmTournament;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmTournament = class(TDataModule)
    dbmTourny: TADOConnection;
    tblGames: TADOTable;
    dsGames: TDataSource;
    tblGameResults: TADOTable;
    tblPlayers: TADOTable;
    dsGameResults: TDataSource;
    dsPlayers: TDataSource;
    tblCredentials: TADOTable;
    dsCredentials: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTournament: TdmTournament;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
