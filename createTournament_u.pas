unit createTournament_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  dbmTournament, Vcl.ComCtrls;

type
  TfrmCreateTournament = class(TForm)
    edtTournamentName: TEdit;
    lstInTournament: TListBox;
    lstPlayers: TListBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    startDate: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    edtPlayers: TEdit;
    btnCreateTournament: TButton;
    procedure FormActivate(Sender: TObject);
    procedure lstInTournamentDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lstInTournamentDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCreateTournamentClick(Sender: TObject);
    procedure lstPlayersDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lstPlayersDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCreateTournament: TfrmCreateTournament;

implementation

uses util_u, mainMenu_u, authentication_u;

{$R *.dfm}

procedure TfrmCreateTournament.btnCreateTournamentClick(Sender: TObject);
var
  sName, sSurname, sListBoxEntry: String;
  i: Integer;
begin
  if not(lstInTournament.Items.Count = 8) then
  begin
    ShowMessage('Make sure that you have 8 players in your tournament!');
  end
  else if lstInTournament.Items.Count = 8 then

  begin
    // write to DB
    dmTournament.tblGames.Append;
    dmTournament.tblGames['GameTitle'] := edtTournamentName.Text;
    dmTournament.tblGames['InitiatedAt'] := startDate.Date;
    dmTournament.tblGames['PlayerCount'] := 8;

    // get current logged in user's userID + store as game manager
    dmTournament.tblCredentials.Locate('Username',
      authentication_u.sUsername, []);
    dmTournament.tblGames['GameManager'] := dmTournament.tblCredentials
      ['UserID'];

    // populate players fields
    for i := 0 to lstInTournament.Items.Count - 1 do
    begin
      sListBoxEntry := lstInTournament.Items[i];
      sName := Copy(sListBoxEntry, 1, Pos(' ', sListBoxEntry) - 1);
      Delete(sListBoxEntry, 1, Pos(' ', sListBoxEntry));
      sSurname := sListBoxEntry;
      dmTournament.tblPlayers.Locate('FirstName; LastName',
        VarArrayOf([sName, sSurname]), []);
      dmTournament.tblGames['Player' + IntToStr(i + 1)] :=
        dmTournament.tblPlayers['PlayerID'];
    end;
    // post to DB
    dmTournament.tblGames.Post;

    { make results record for created tournament }
    dmTournament.tblGameResults.Append;
    dmTournament.tblGameResults['GameID'] := dmTournament.tblGames['GameID'];
    dmTournament.tblGameResults.Post;

    ShowMessage('Created your tournament!');
  end;
end;

procedure TfrmCreateTournament.FormActivate(Sender: TObject);
begin
  // clear for user
  lstPlayers.Clear;
  lstInTournament.Clear;
  edtTournamentName.Clear;

  dmTournament.tblPlayers.First;
  while not dmTournament.tblPlayers.Eof do
  begin
    lstPlayers.Items.Add(dmTournament.tblPlayers['FirstName'] + ' ' +
      dmTournament.tblPlayers['LastName']);
    dmTournament.tblPlayers.Next;
  end;

end;

procedure TfrmCreateTournament.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  util.showFormHideSelf(frmMainMenu, Self);
end;

procedure TfrmCreateTournament.lstInTournamentDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  i: Integer;
  point: TPoint;
  sTemp: string;
begin
  // Thomas Stutz
  if lstInTournament.Items.Count < 8 then
  begin
    point.X := X;
    point.Y := Y;
    i := 0;
    while i <= TListBox(Source).Items.Count - 1 do
    begin
      if TListBox(Source).selected[i] then
      begin
        with Sender as TListBox do
        begin
          sTemp := TListBox(Source).Items[i];
          TListBox(Source).Items.Delete(i);
          Items.Insert(itemAtPos(point, True), sTemp);
        end;
      end;
      Inc(i);
    end;
  end
  else
    ShowMessage('There is a maximum of 8 players per tournament!');
end;

procedure TfrmCreateTournament.lstInTournamentDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source = lstPlayers) and (lstInTournament.Items.Count < 8) then
    Accept := True
end;

procedure TfrmCreateTournament.lstPlayersDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  i: Integer;
  point: TPoint;
  sTemp: string;
begin
  // Thomas Stutz
  point.X := X;
  point.Y := Y;
  i := 0;
  while i <= TListBox(Source).Items.Count - 1 do
  begin
    if TListBox(Source).selected[i] then
    begin
      with Sender as TListBox do
      begin
        sTemp := TListBox(Source).Items[i];
        TListBox(Source).Items.Delete(i);
        Items.Insert(itemAtPos(point, True), sTemp);
      end;
    end;
    Inc(i);
  end;
end;

procedure TfrmCreateTournament.lstPlayersDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source = lstInTournament then
    Accept := True
end;

end.
