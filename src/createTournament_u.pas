unit createTournament_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  dbmTournament, Vcl.ComCtrls, StrUtils;

type
  TfrmCreateTournament = class(TForm)
    edtTournamentName: TEdit;
    lstInTournament: TListBox;
    lstPlayers: TListBox;
    grpPlayerLists: TGroupBox;
    Label1: TLabel;
    startDate: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    edtPlayers: TEdit;
    btnCreateTournament: TButton;
    edtTimeMinutes: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
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

const
  arrFields: array [0 .. 14] of String = ('QuarterFinals1', 'QuarterFinals2',
    'QuarterFinals3', 'QuarterFinals4', 'QuarterFinals5', 'QuarterFinals6',
    'QuarterFinals7', 'QuarterFinals8', 'SemiFinals1', 'SemiFinals2',
    'SemiFinals3', 'SemiFinals4', 'Finals1', 'Finals2', 'Winner');

implementation

uses util_u, mainMenu_u, authentication_u;

{$R *.dfm}

procedure TfrmCreateTournament.btnCreateTournamentClick(Sender: TObject);
var
  sName, sSurname, sListBoxEntry, sField: String;
  i: Integer;
begin
  if not(lstInTournament.Items.Count = 8) then
  begin
    ShowMessage('Make sure that you have 8 players in your tournament!');
  end
  else if lstInTournament.Items.Count = 8 then
  begin
    // if both fields are NOT blank
    if (edtTournamentName.Text <> NullAsStringValue) and (StrToInt(edtTimeMinutes.Text) > 0)
    then
    begin
      if not dmTournament.tblGames.Locate('GameTitle',
        edtTournamentName.Text, []) then
      begin
        with dmTournament do
        begin
          // write to DB
          tblGames.Append;
          tblGames['GameTitle'] := edtTournamentName.Text;
          tblGames['InitiatedAt'] := startDate.Date;
          tblGames['PlayerCount'] := 8;
          tblGames['TimePerMatch'] := StrToInt(edtTimeMinutes.Text);
          tblGames['WinningPlayer'] := 0;
          // get current logged in user's userID from auth form + store as game manager
          tblGames['GameManager'] := authentication_u.iUserID;

          // populate players fields
          for i := 0 to lstInTournament.Items.Count - 1 do
          begin
            sListBoxEntry := lstInTournament.Items[i];
            sName := Copy(sListBoxEntry, 1, Pos(' ', sListBoxEntry) - 1);
            Delete(sListBoxEntry, 1, Pos(' ', sListBoxEntry));
            sSurname := sListBoxEntry;
            tblPlayers.Locate('FirstName; LastName',
              VarArrayOf([sName, sSurname]), []);
            tblGames['Player' + IntToStr(i + 1)] := tblPlayers['PlayerID'];
          end;
          // post to DB
          tblGames.Post;

          { make results record for created tournament }
          tblGameResults.Append;
          tblGameResults['GameID'] := tblGames['GameID'];
          for sField in arrFields do
          begin
            tblGameResults[sField] := 0;
          end;
          tblGameResults.Post;

          ShowMessage('Created your tournament!');
        end
      end
      else
        ShowMessage('This tournament name is already taken!')
    end
    else
      ShowMessage('One of your fields is blank!');

  end;
end;

procedure TfrmCreateTournament.FormActivate(Sender: TObject);
begin
  // clear for user
  lstPlayers.Clear;
  lstInTournament.Clear;
  edtTournamentName.Clear;

  with dmTournament do
  begin
    tblPlayers.First;
    while not tblPlayers.Eof do
    begin
      lstPlayers.Items.Add(tblPlayers['FirstName'] + ' ' + tblPlayers
        ['LastName']);
      tblPlayers.Next;
    end;
  end;

  ShowMessage('You can add players to your tournament by dragging them');
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
