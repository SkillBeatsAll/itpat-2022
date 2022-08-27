unit tournamentView_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  dbmTournament, util_u, mainMenu_u, Vcl.WinXCtrls, System.UITypes;

type
  TfrmTournamentView = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    btnShowTournament: TButton;
    Shape4: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    QF1: TLabel;
    QF2: TLabel;
    QF3: TLabel;
    QF4: TLabel;
    QF5: TLabel;
    QF6: TLabel;
    QF7: TLabel;
    QF8: TLabel;
    SF1: TLabel;
    SF2: TLabel;
    SF3: TLabel;
    SF4: TLabel;
    F1: TLabel;
    F2: TLabel;
    Winner: TLabel;
    ComboBox1: TComboBox;
    lblEditMode: TLabel;
    toggleEditMode: TToggleSwitch;
    procedure btnShowTournamentClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure toggleEditModeClick(Sender: TObject);
    procedure PlayerLabelClick(Sender: TObject);
  private
    { Private declarations }
    procedure joinShapes(shp1: TShape; shp2: TShape; shp3: TShape);
  public
    { Public declarations }
    function getFullName(playerID: Integer): String;
  end;

var
  frmTournamentView: TfrmTournamentView;

implementation

uses authentication_u, manageTournament_u;

function TfrmTournamentView.getFullName(playerID: Integer): String;
begin
  if dmTournament.tblPlayers.Locate('PlayerID', playerID, []) then
    result := dmTournament.tblPlayers['FirstName'] + ' ' +
      dmTournament.tblPlayers['LastName']
  else
    result := 'TBD';
end;

{$R *.dfm}

procedure TfrmTournamentView.btnShowTournamentClick(Sender: TObject);
var
  tS1, tS2, tS3: TShape;
  tEditLabel: TLabel;
  i, tournamentsize: Integer;
begin
  // OUTPUT LINES
  if not(ComboBox1.Text = '') then
  begin
    dmTournament.tblGames.Locate('GameTitle', ComboBox1.Text, []);
    dmTournament.tblGameResults.Locate('GameID',
      dmTournament.tblGames['GameID'], []);
    tournamentsize := dmTournament.tblGames['PlayerCount'];
    i := 1;
    repeat
      tS1 := TShape(FindComponent('Shape' + IntToStr(i)));
      tS2 := TShape(FindComponent('Shape' + IntToStr(i + 1)));
      case i of
        1:
          tS3 := TShape(FindComponent('Shape' + IntToStr(i + 9)));
        5:
          tS3 := TShape(FindComponent('Shape' + IntToStr(i + 7)));
        9:
          tS3 := TShape(FindComponent('Shape' + IntToStr(i + 5)));
        13:
          tS3 := TShape(FindComponent('Shape' + IntToStr(i + 2)));
      end;
      joinShapes(tS1, tS2, tS3);
      i := i + 2;

      // shape colors:
      tS1.Brush.Color := TColor($00F7A971);
      tS2.Brush.Color := TColor($00F7A971);
      tS3.Brush.Color := TColor($00F7A971);
    until (i >= (tournamentsize * 2) - 1);

    for i := 1 to ((tournamentsize * 2) - 1) do
    begin
      { tEditLabel is found by looking for the component that we are working with (QF/SF/F/Winner)
        1) The caption is set to the player's full name, or "TBD" if its not yet entered
        2) The label is aligned horizontally in the center
        3) The label is aligned vertically in the center
        4) Color set to light green

        Note: 2 and 3 are performed by a utility function under util_u.
      }
      case i of
        1 .. 8:
          begin
            tEditLabel := TLabel(FindComponent('QF' + IntToStr(i)));
            tEditLabel.Caption :=
              getFullName(dmTournament.tblGameResults['QuarterFinals' +
              IntToStr(i)]);
            util.alignLabel(tEditLabel);
            tEditLabel.Font.Color := $007A2346;
          end;
        9 .. 12:
          begin
            tEditLabel := TLabel(FindComponent('SF' + IntToStr(i - 8)));
            tEditLabel.Caption :=
              getFullName(dmTournament.tblGameResults
              ['SemiFinals' + IntToStr(i - 8)]);
            util.alignLabel(tEditLabel);
            tEditLabel.Font.Color := $00DDDDF5;
          end;
        13 .. 14:
          begin
            tEditLabel := TLabel(FindComponent('F' + IntToStr(i - 12)));
            tEditLabel.Caption :=
              getFullName(dmTournament.tblGameResults
              ['Finals' + IntToStr(i - 12)]);
            util.alignLabel(tEditLabel);
            tEditLabel.Font.Color := $00A74AF8;
          end;
        15:
          begin
            tEditLabel := TLabel(FindComponent('Winner'));
            tEditLabel.Caption :=
              getFullName(dmTournament.tblGameResults['Winner']);
            util.alignLabel(tEditLabel);
            tEditLabel.Font.Color := TColor($0076FCF7);
          end;
      end;

    end;

  end
  else if (ComboBox1.Text = '') then
  begin
    ShowMessage('Please select a tournament to view using the dropdown box!');
  end;

end;

procedure TfrmTournamentView.FormActivate(Sender: TObject);
begin
  ComboBox1.Clear;
  dmTournament.tblGames.First;
  while not dmTournament.tblGames.Eof do
  begin
    ComboBox1.Items.Add(dmTournament.tblGames['GameTitle']);
    dmTournament.tblGames.Next;
  end;
  ComboBox1.Refresh;

  if (authentication_u.iUserLevel = 2) or (authentication_u.iUserLevel = 3) then
  begin
    lblEditMode.Visible := true;
    toggleEditMode.State := tssOff;
    toggleEditMode.Visible := true;
  end
  else if authentication_u.iUserLevel = 1 then
  begin
    lblEditMode.Visible := false;
    toggleEditMode.State := tssOff;
    toggleEditMode.Visible := false;
  end;
end;

procedure TfrmTournamentView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  util.showFormHideSelf(frmMainMenu, Self);
end;

procedure TfrmTournamentView.joinShapes(shp1: TShape; shp2: TShape;
  shp3: TShape);
var
  initialX, initialY: Integer;
  moveX, moveY: Integer;
  divisionFactor, multiplicationFactor: Integer;
begin
  canvas.pen.Color := TColor($663399);
  canvas.pen.Width := 4;
  case StrToInt(shp3.name[6] + shp3.name[7]) of
    9 .. 12:
      begin
        divisionFactor := 4;
        multiplicationFactor := 1;
      end;
    13 .. 14:
      begin
        divisionFactor := 8;
        multiplicationFactor := 2;
      end;
    15:
      begin
        divisionFactor := 16;
        multiplicationFactor := 4;
      end;
  end;

  // shape 1, shape 3 lines
  initialX := shp1.Left + shp1.Width;
  initialY := shp1.Top + Round(shp1.Height / 2);
  canvas.MoveTo(initialX, initialY);
  moveX := initialX + Round(shp3.Left / divisionFactor);
  if shp1.Top < shp3.Top then
    moveY := initialY + (shp3.Height * multiplicationFactor)
  else
    moveY := initialY - (shp3.Height * multiplicationFactor);
  canvas.LineTo(moveX, initialY);
  canvas.LineTo(moveX, moveY);
  canvas.LineTo(shp3.Left, moveY);

  // shape 2, shape 3 lines
  initialX := shp2.Left + shp2.Width;
  initialY := shp2.Top + Round(shp2.Height / 2);
  canvas.MoveTo(initialX, initialY);
  moveX := initialX + Round(shp3.Left / divisionFactor);
  if shp1.Top < shp1.Top then
    moveY := initialY + (shp3.Height * multiplicationFactor)
  else
    moveY := initialY - (shp3.Height * multiplicationFactor);
  canvas.LineTo(moveX, initialY);
  canvas.LineTo(moveX, moveY);
end;

procedure TfrmTournamentView.PlayerLabelClick(Sender: TObject);
begin
  frmManageTournament.Show;
  frmManageTournament.FormActivate(Sender);
end;

procedure TfrmTournamentView.toggleEditModeClick(Sender: TObject);
begin
  if toggleEditMode.State = tssOn then
  begin
    ShowMessage
      ('You have entered edit mode. To modify your tournament, click on one of the shapes!');

    // show modifiable tournaments
    ComboBox1.Clear;
    dmTournament.tblGames.Filtered := false;
    dmTournament.tblGames.Filter := 'GameManager = ' +
      IntToStr(authentication_u.iUserID);
    dmTournament.tblGames.Filtered := true;
    dmTournament.tblGames.First;
    while not dmTournament.tblGames.Eof do
    begin
      ComboBox1.Items.Add(dmTournament.tblGames['GameTitle']);
      dmTournament.tblGames.Next;
    end;
    ComboBox1.Refresh;

  end;

  if toggleEditMode.State = tssOff then
  begin
    ComboBox1.Clear;
    dmTournament.tblGames.Filtered := false;
    dmTournament.tblGames.First;
    while not dmTournament.tblGames.Eof do
    begin
      ComboBox1.Items.Add(dmTournament.tblGames['GameTitle']);
      dmTournament.tblGames.Next;
    end;
    ComboBox1.Refresh;
  end;
end;

end.
