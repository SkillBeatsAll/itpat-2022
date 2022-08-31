unit managePlayers_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  dbmTournament,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, mainMenu_u, util_u, Vcl.ComCtrls,
  tournamentView_u, ShellAPI;

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
    btnExportPlayers: TButton;
    redOutput: TRichEdit;
    btnImportPlayers: TButton;
    procedure btnAddPlayerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnDeletePlayerClick(Sender: TObject);
    procedure btnExportPlayersClick(Sender: TObject);
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

procedure TfrmManagePlayers.btnExportPlayersClick(Sender: TObject);
var
  sFile: String;
begin
  // redoutput initialization
  redOutput.Clear;
  redOutput.Paragraph.TabCount := 1;
  redOutput.Paragraph.Tab[0] := 200;
  redOutput.Lines.Add('Player Name'#9'Games Won');
  redOutput.Lines.Add
    ('----------------------------------------------------------------------');

  dmTournament.tblPlayers.First;
  with dmTournament.tblPlayers do
  begin
    while not Eof do
    begin
      redOutput.Lines.Add(frmTournamentView.getFullName(FieldByName('PlayerID')
        .AsInteger) + #9 + FieldByName('GamesWon').AsString);
      next;
    end;
    sFile := 'PlayersList.rtf';
    redOutput.Lines.SaveToFile(sFile);
    ShowMessage('Exported tournament to: ' + sFile);
    ShellExecute(Handle, 'open', pChar(sFile), nil, nil, SW_SHOWNORMAL);

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
