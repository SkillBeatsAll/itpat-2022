unit tournamentView_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  dbmTournament, util_u, mainMenu_u;

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
    btnRefactored: TButton;
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
    procedure btnRefactoredClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

function TfrmTournamentView.getFullName(playerID: Integer): String;
begin
  dmTournament.tblPlayers.Locate('PlayerID', playerID, []);
  result := dmTournament.tblPlayers['FirstName'] + ' ' + dmTournament.tblPlayers
    ['LastName'];
end;

{$R *.dfm}

procedure TfrmTournamentView.btnRefactoredClick(Sender: TObject);
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
    until (i >= (tournamentsize * 2) - 1);

    for i := 1 to ((tournamentsize * 2) - 1) do
    begin

      case i of
        1 .. 8:
          begin
            tEditLabel := TLabel(FindComponent('QF' + IntToStr(i)));
            tEditLabel.Caption :=
              getFullName(dmTournament.tblGameResults['QuarterFinals' +
              IntToStr(i)]);
            tEditLabel.Width := Shape1.Width;
            tEditLabel.Alignment := taCenter;
          end;
        9 .. 12:
          begin
            tEditLabel := TLabel(FindComponent('SF' + IntToStr(i - 8)));
            tEditLabel.Caption :=
              getFullName(dmTournament.tblGameResults
              ['SemiFinals' + IntToStr(i - 8)]);
            tEditLabel.Width := Shape1.Width;
            tEditLabel.Alignment := taCenter;
          end;
        13 .. 14:
          begin
            tEditLabel := TLabel(FindComponent('F' + IntToStr(i - 12)));
            tEditLabel.Caption :=
              getFullName(dmTournament.tblGameResults
              ['Finals' + IntToStr(i - 12)]);
            tEditLabel.Width := Shape1.Width;
            tEditLabel.Alignment := taCenter;
          end;
        15:
          begin
            tEditLabel := TLabel(FindComponent('Winner'));
            tEditLabel.Caption :=
              getFullName(dmTournament.tblGameResults['Winner']);
            tEditLabel.Width := Shape1.Width;
            tEditLabel.Alignment := taCenter;
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
  canvas.pen.Color := clMaroon;
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

end.
