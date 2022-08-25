unit managePlayers_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  dbmTournament,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, mainMenu_u, util_u;

type
  TfrmManagePlayers = class(TForm)
    DBGrid1: TDBGrid;
    grpAddPlayer: TGroupBox;
    ledtFirstName: TLabeledEdit;
    ledtLastName: TLabeledEdit;
    btnAddPlayer: TButton;
    grpPlayerDetails: TGroupBox;
    ledtShowFirstName: TLabeledEdit;
    ledtShowLastName: TLabeledEdit;
    ledtShowPlayerID: TLabeledEdit;
    ledtShowGamesWon: TLabeledEdit;
    btnDeletePlayer: TButton;
    Label1: TLabel;
    procedure btnAddPlayerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnDeletePlayerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManagePlayers: TfrmManagePlayers;

implementation

{$R *.dfm}

procedure TfrmManagePlayers.btnAddPlayerClick(Sender: TObject);
begin
  dmTournament.tblPlayers.Append;
  dmTournament.tblPlayers['FirstName'] := ledtFirstName.Text;
  dmTournament.tblPlayers['LastName'] := ledtLastName.Text;
  dmTournament.tblPlayers['GamesWon'] := 0;
  dmTournament.tblPlayers.Post;

  ShowMessage('Added a new player!');
end;

procedure TfrmManagePlayers.btnDeletePlayerClick(Sender: TObject);
begin
  if messagedlg('Are you sure?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmTournament.tblPlayers.Delete;
    ShowMessage('Deleted the player!');
  end;
end;

procedure TfrmManagePlayers.DBGrid1CellClick(Column: TColumn);
begin
  ledtShowPlayerID.Text := dmTournament.tblPlayers['PlayerID'];
  ledtShowFirstName.Text := dmTournament.tblPlayers['FirstName'];
  ledtShowLastName.Text := dmTournament.tblPlayers['LastName'];
  ledtShowGamesWon.Text := dmTournament.tblPlayers['GamesWon'];

  // gray out boxes so its obvious that its not editable
  ledtShowPlayerID.Enabled := false;
  ledtShowFirstName.Enabled := false;
  ledtShowLastName.Enabled := false;
  ledtShowGamesWon.Enabled := false;
end;

procedure TfrmManagePlayers.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  util.showFormHideSelf(frmMainMenu, Self);
end;

end.
