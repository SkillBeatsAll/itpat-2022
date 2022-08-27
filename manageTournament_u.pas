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
    PaintBox1: TPaintBox;
    procedure FormActivate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManageTournament: TfrmManageTournament;
  sLabelType: String;

implementation

{$R *.dfm}

procedure TfrmManageTournament.FormActivate(Sender: TObject);
var
  lblClickedLabel, lblLink1, lblLink2: TLabel;
  i: Integer;
begin
  // paint box init
  PaintBox1.Width := Self.Width;
  PaintBox1.Height := Self.Height;
  PaintBox1.canvas.Create;
  PaintBox1.canvas.Pen.Color := clBlue;
  PaintBox1.canvas.Pen.Width := 3;

  lblClickedLabel := TLabel(Sender);
  lblEditing.Caption := 'You are editing: ' + lblClickedLabel.Caption + ' (' +
    lblClickedLabel.Name + ')';

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

  Player1.Caption := lblLink1.Caption;
  Player2.Caption := lblLink2.Caption;
  util.alignLabel(Player1);
  util.alignLabel(Player2);

  // fill combo box:
  if sLabelType = 'QuarterFinals' then
  begin
    cmbPlayersToPick.Clear;
    dmTournament.tblGames.Locate('GameTitle',
      frmTournamentView.ComboBox1.Text, []);
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

procedure TfrmManageTournament.PaintBox1Paint(Sender: TObject);
begin
  // draw lines!
  if not (sLabelType = 'QuarterFinals') then
  begin
    PaintBox1.canvas.MoveTo(127, 106);
    PaintBox1.canvas.LineTo(179, 106);
    PaintBox1.canvas.LineTo(179, 140);
    PaintBox1.canvas.LineTo(198, 140);
    PaintBox1.canvas.MoveTo(127, 170);
    PaintBox1.canvas.LineTo(179, 170);
    PaintBox1.canvas.LineTo(179, 140);
  end;
end;

end.
