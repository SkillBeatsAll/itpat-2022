unit manageTournament_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dbmTournament, tournamentView_u, util_u;

type
  TfrmManageTournament = class(TForm)
    lblEditing: TLabel;
    Label1: TLabel;
    cmbPlayersToPick: TComboBox;
    Shape1: TShape;
    Shape2: TShape;
    Player1: TLabel;
    Player2: TLabel;
    btnUpdate: TButton;
    pbCanvas: TPaintBox;
    procedure FormActivate(Sender: TObject);
    procedure pbCanvasPaint(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManageTournament: TfrmManageTournament;
  sLabelType: String;
  lblClickedLabel: TLabel;

implementation

{$R *.dfm}

procedure TfrmManageTournament.btnUpdateClick(Sender: TObject);
var
  sField, sName, sSurname, sComboBoxText: String;
begin
  { get field to edit in DB (label type + last character of name (which is a number))
    eg: SemiFinals - label type; '3' - last character = SemiFinals3
  }
  dmTournament.tblGameResults.Edit;
  if not(sLabelType = 'Winner') then
  begin
    sField := sLabelType + lblClickedLabel.Name[Length(lblClickedLabel.Name)];
  end
  else
    sField := 'Winner';

  {
    Locate player;
    Store results in appropriate field!
  }
  sComboBoxText := cmbPlayersToPick.Text;
  sName := Copy(sComboBoxText, 1, Pos(' ', sComboBoxText) - 1);
  Delete(sComboBoxText, 1, Pos(' ', sComboBoxText));
  sSurname := sComboBoxText;
  dmTournament.tblPlayers.Locate('FirstName; LastName',
    VarArrayOf([sName, sSurname]), []);
  dmTournament.tblGameResults[sField] := dmTournament.tblPlayers['PlayerID'];
  dmTournament.tblGameResults.Post;

  // if the user chose the winner, store in db in dedicated fields.
  if sLabelType = 'Winner' then
  begin
    dmTournament.tblPlayers.Edit;
    dmTournament.tblPlayers['GamesWon'] := dmTournament.tblPlayers
      ['GamesWon'] + 1;
    dmTournament.tblPlayers.Post;
    dmTournament.tblGames.Locate('GameID', dmTournament.tblGameResults
      ['GameID'], []);
    dmTournament.tblGames.Edit;
    dmTournament.tblGames['WinningPlayer'] := dmTournament.tblPlayers
      ['PlayerID'];
    dmTournament.tblGames.Post;
  end;
  ShowMessage('Updated tournament successfully!');

  // redisplay tournament by simulating a button click
  frmTournamentView.btnShowTournamentClick(Self);
end;

procedure TfrmManageTournament.FormActivate(Sender: TObject);
var
  lblLink1, lblLink2: TLabel;
  i: Integer;
begin
  // paint box init
  pbCanvas.Width := Self.Width;
  pbCanvas.Height := Self.Height;
  pbCanvas.canvas.Create;
  pbCanvas.canvas.Pen.Color := clBlue;
  pbCanvas.canvas.Pen.Width := 3;

  // tell user which bracket they are working with + player
  lblClickedLabel := TLabel(Sender);
  lblEditing.Caption := 'You are editing: ' + lblClickedLabel.Caption + ' (' +
    lblClickedLabel.Name + ')';
  // get current label
  case lblClickedLabel.Name[1] of
    'Q':
      sLabelType := 'QuarterFinals';
    'S':
      sLabelType := 'SemiFinals';
    'F':
      sLabelType := 'Finals';
    'W':
      sLabelType := 'Winner';
  end;

  if sLabelType = 'QuarterFinals' then
  begin
    // hide shapes for quarter finals + center combobox because there are no brackets before it
    Shape1.Hide;
    Shape2.Hide;
    Player1.Hide;
    Player2.Hide;
    cmbPlayersToPick.Top := 129;
    cmbPlayersToPick.Left := 102;
  end
  else
  begin
    Shape1.Show;
    Shape2.Show;
    Player1.Show;
    Player2.Show;
    cmbPlayersToPick.Top := 129;
    cmbPlayersToPick.Left := 198;
  end;

  if (sLabelType = 'SemiFinals') then
  begin
    i := StrToInt(lblClickedLabel.Name[3]);
    case i of
      1:
        begin
          lblLink1 := TLabel(frmTournamentView.FindComponent('QF1'));
          lblLink2 := TLabel(frmTournamentView.FindComponent('QF2'));
        end;
      2:
        begin
          lblLink1 := TLabel(frmTournamentView.FindComponent('QF3'));
          lblLink2 := TLabel(frmTournamentView.FindComponent('QF4'));
        end;
      3:
        begin
          lblLink1 := TLabel(frmTournamentView.FindComponent('QF5'));
          lblLink2 := TLabel(frmTournamentView.FindComponent('QF6'));
        end;
      4:
        begin
          lblLink1 := TLabel(frmTournamentView.FindComponent('QF7'));
          lblLink2 := TLabel(frmTournamentView.FindComponent('QF8'));
        end;
    end;

  end
  else if (sLabelType = 'Finals') then
  begin
    i := StrToInt(lblClickedLabel.Name[2]);
    case i of
      1:
        begin
          lblLink1 := TLabel(frmTournamentView.FindComponent('SF1'));
          lblLink2 := TLabel(frmTournamentView.FindComponent('SF2'));
        end;
      2:
        begin
          lblLink1 := TLabel(frmTournamentView.FindComponent('SF3'));
          lblLink2 := TLabel(frmTournamentView.FindComponent('SF4'));
        end;
    end;
  end
  else if (sLabelType = 'Winner') then
  begin
    lblLink1 := TLabel(frmTournamentView.FindComponent('F1'));
    lblLink2 := TLabel(frmTournamentView.FindComponent('F2'));
  end;

  // set captions to the player names + align in center
  Player1.Caption := lblLink1.Caption;
  Player2.Caption := lblLink2.Caption;
  util.alignLabel(Player1);
  util.alignLabel(Player2);

  // fill combo box:
  if sLabelType = 'QuarterFinals' then
  begin
    cmbPlayersToPick.Clear;
    dmTournament.tblGames.Locate('GameTitle',
      frmTournamentView.cmbTournaments.Text, []);
    for i := 1 to 8 do
    begin
      dmTournament.tblPlayers.Locate('PlayerID',
        dmTournament.tblGames['Player' + IntToStr(i)], []);
      cmbPlayersToPick.Items.Add(dmTournament.tblPlayers['FirstName'] + ' ' +
        dmTournament.tblPlayers['LastName']);
    end;
  end
  else
  begin
    cmbPlayersToPick.Clear;
    cmbPlayersToPick.Items.Add(Player1.Caption);
    cmbPlayersToPick.Items.Add(Player2.Caption);
  end;

end;

procedure TfrmManageTournament.pbCanvasPaint(Sender: TObject);
begin
  // draw lines!
  if not(sLabelType = 'QuarterFinals') then
  begin
    pbCanvas.canvas.MoveTo(127, 106);
    pbCanvas.canvas.LineTo(179, 106);
    pbCanvas.canvas.LineTo(179, 140);
    pbCanvas.canvas.LineTo(198, 140);
    pbCanvas.canvas.MoveTo(127, 170);
    pbCanvas.canvas.LineTo(179, 170);
    pbCanvas.canvas.LineTo(179, 140);
  end;
end;

end.
