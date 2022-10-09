unit managePlayers_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  dbmTournament,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, mainMenu_u, util_u, Vcl.ComCtrls,
  tournamentView_u, ShellAPI, StrUtils;

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
    redExport: TRichEdit;
    btnImportPlayers: TButton;
    procedure btnAddPlayerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnDeletePlayerClick(Sender: TObject);
    procedure btnExportPlayersClick(Sender: TObject);
    procedure btnImportPlayersClick(Sender: TObject);
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
  if not(ledtFirstName.Text = NullAsStringValue) and
    not(ledtLastName.Text = NullAsStringValue) then
  begin
    with dmTournament do
    begin
      tblPlayers.Append;
      tblPlayers['FirstName'] := ledtFirstName.Text;
      tblPlayers['LastName'] := ledtLastName.Text;
      tblPlayers['GamesWon'] := 0;
      tblPlayers.Post;

      ShowMessage('Added a new player!');
    end;
  end
  else
  begin
    ShowMessage('One of your fields is blank!');
  end;
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
  redExport.Clear;
  redExport.Paragraph.TabCount := 1;
  redExport.Paragraph.Tab[0] := 200;
  redExport.Lines.Add('Player Name'#9'Games Won');
  redExport.Lines.Add
    ('----------------------------------------------------------------------');

  with dmTournament.tblPlayers do
  begin
    First;
    while not Eof do
    begin
      redExport.Lines.Add(frmTournamentView.getFullName(FieldByName('PlayerID')
        .AsInteger) + #9 + FieldByName('GamesWon').AsString);
      next;
    end;
    sFile := 'PlayersList.rtf';
    redExport.Lines.SaveToFile(sFile);
    ShowMessage('Exported tournament to: ' + sFile);
    ShellExecute(Handle, 'open', pChar(sFile), nil, nil, SW_SHOWNORMAL);

  end;
end;

procedure TfrmManagePlayers.btnImportPlayersClick(Sender: TObject);
var
  dialogSelectFile: TOpenDialog;
  sStringsList: TStringList;
  i, iNotImported: Integer;
  sFirstName, sLastName: String;
  bNameTooLong: Boolean;
begin
  dialogSelectFile := TOpenDialog.Create(nil);
  sStringsList := TStringList.Create();
  ShowMessage
    ('You can import a file with the following format: ''firstname,lastname''');
  // let user choose file + load file into stringslist
  try
    dialogSelectFile.InitialDir := 'C:\';
    dialogSelectFile.Filter := 'Players List (*.csv,*.txt)|*.csv;*.txt';
    if dialogSelectFile.Execute(Handle) then
    begin
      // load textfile into stringslist
      sStringsList.LoadFromFile(dialogSelectFile.FileName);
    end;
  finally
    dialogSelectFile.Free;
  end;

  // initialize data-checking variables
  bNameTooLong := false;
  iNotImported := 0;

  if sStringsList.Count <> 0 then
  begin
    for i := 0 to sStringsList.Count - 1 do
    begin
      // get first + last name from delimited string
      sFirstName := SplitString(sStringsList.Strings[i], ',')[0];
      sLastName := SplitString(sStringsList.Strings[i], ',')[1];

      { check if the current first/last name is under 20 }
      if not((Length(sFirstName) > 20) or (Length(sLastName) > 20)) then
      begin
        // write to DB
        with dmTournament do
        begin
          tblPlayers.Append;
          tblPlayers['FirstName'] := sFirstName;
          tblPlayers['LastName'] := sLastName;
          tblPlayers['GamesWon'] := 0;
          tblPlayers.Post;
        end;
      end
      else
      begin
        // not imported
        bNameTooLong := true;
        Inc(iNotImported); { increase the count of the names not imported }
      end;
    end;

    if bNameTooLong then
      ShowMessage
        ('One of your first names / last names that you tried to import was too long, and as a result, was not imported!');

    ShowMessage('Successfully imported ' + IntToStr(sStringsList.Count -
      iNotImported) + ' players!');
  end;
  sStringsList.Free;
end;

procedure TfrmManagePlayers.DBGrid1CellClick(Column: TColumn);
begin
  with dmTournament do
  begin
    ledtShowPlayerID.Text := tblPlayers['PlayerID'];
    ledtShowFirstName.Text := tblPlayers['FirstName'];
    ledtShowLastName.Text := tblPlayers['LastName'];
    ledtShowGamesWon.Text := tblPlayers['GamesWon'];
  end;
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
