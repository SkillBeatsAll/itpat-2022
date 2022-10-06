unit dbmTournament;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.Forms;

type
  TdmTournament = class(TDataModule)
    conTournamentDB: TADOConnection;
    tblGames: TADOTable;
    dsGames: TDataSource;
    tblGameResults: TADOTable;
    tblPlayers: TADOTable;
    dsGameResults: TDataSource;
    dsPlayers: TDataSource;
    tblCredentials: TADOTable;
    dsCredentials: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTournament: TdmTournament;

  // connection string is constant with a variable ("%pathtodb%")
const
  sConnectionString
    : String =
    'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=%pathtodb%/assets/database/tournamentDB.mdb;Mode=Share Deny None;'
    + 'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password=""'
    + ';Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmTournament.DataModuleCreate(Sender: TObject);
var
  sPath: String;
begin
  // ensure connection path is correct each time
  sPath := ExtractFilePath(Application.ExeName);
  // replaces the variable with the actual path (needed for program to run on different pcs)
  conTournamentDB.ConnectionString := StringReplace(sConnectionString, '%pathtodb%',
    sPath, []);
  // enable db; make tables active!
  conTournamentDB.Connected := true;
  tblGames.Active := true;
  tblGameResults.Active := true;
  tblPlayers.Active := true;
  tblCredentials.Active := true;
end;

end.
