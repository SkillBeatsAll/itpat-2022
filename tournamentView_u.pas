unit tournamentView_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  dbmTournament, util_u, mainMenu_u, Vcl.WinXCtrls, System.UITypes,
  Vcl.ComCtrls, ShellAPI;

type
  TfrmTournamentView = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
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
    cmbTournaments: TComboBox;
    lblEditMode: TLabel;
    toggleEditMode: TToggleSwitch;
    btnExportTournament: TButton;
    redExport: TRichEdit;
    btnDeleteTournament: TButton;
    lblTimePerMatch: TLabel;
    lblWholeGameTime: TLabel;
    procedure btnShowTournamentClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure toggleEditModeClick(Sender: TObject);
    procedure PlayerLabelClick(Sender: TObject);
    procedure btnExportTournamentClick(Sender: TObject);
    procedure btnDeleteTournamentClick(Sender: TObject);
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

{ [Function | Get Full Name (of the supplied playerID)
  (1) Check if the playerID exists (if it doesn't, then it is probably null, so the tournament hasnt progressed past that yet)
  (2) If it exists, then return "FirstName [space] LastName"
  (3) If it is null (or doesn't exist), return "TBD" -> To Be Determined.
}
function TfrmTournamentView.getFullName(playerID: Integer): String;
begin
  if dmTournament.tblPlayers.Locate('PlayerID', playerID, []) then
    result := dmTournament.tblPlayers['FirstName'] + ' ' +
      dmTournament.tblPlayers['LastName']
  else
    result := 'TBD';
end;

{$R *.dfm}

{ [Procedure | Delete Tournament Button]
  (1)  find game id by finding game title
  (2)  store game id in variable
  (3)  delete record from tblGames
  (4)  locate + delete record from tblGameResults
  (5)  output :D
}
procedure TfrmTournamentView.btnDeleteTournamentClick(Sender: TObject);
var
  iGameID: Integer;
begin
  if messagedlg('Are you sure?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmTournament.tblGames.Locate('GameID',
      dmTournament.tblGames.Locate('GameTitle', cmbTournaments.Text, []), []);
    iGameID := dmTournament.tblGames['GameID'];
    dmTournament.tblGames.Delete;

    dmTournament.tblGameResults.Locate('GameID', iGameID, []);
    dmTournament.tblGameResults.Delete;

    ShowMessage('Deleted the tournament!');
  end;
end;

procedure TfrmTournamentView.btnExportTournamentClick(Sender: TObject);
var
  sFile: String;
begin
  if not(cmbTournaments.Text = '') then
  begin
    redExport.Clear;
    redExport.Paragraph.TabCount := 1;
    redExport.Paragraph.Tab[0] := 100;
    with dmTournament.tblGames do
    begin
      Locate('GameTitle', cmbTournaments.Text, []);
      redExport.Lines.Add('Game Title' + #9 + '| ' + FieldByName('GameTitle')
        .AsString);
      redExport.Lines.Add('Time Per Match' + #9 + '| ' +
        FieldByName('TimePerMatch').AsString);
      redExport.Lines.Add('Initiated At' + #9 + '| ' +
        FieldByName('InitiatedAt').AsString);
      redExport.Lines.Add('Player Count' + #9 + '| ' +
        FieldByName('PlayerCount').AsString);
      redExport.Lines.Add('Player 1' + #9 + '| ' +
        getFullName(FieldByName('Player1').AsInteger));
      redExport.Lines.Add('Player 2' + #9 + '| ' +
        getFullName(FieldByName('Player2').AsInteger));
      redExport.Lines.Add('Player 3' + #9 + '| ' +
        getFullName(FieldByName('Player3').AsInteger));
      redExport.Lines.Add('Player 4' + #9 + '| ' +
        getFullName(FieldByName('Player4').AsInteger));
      redExport.Lines.Add('Player 5' + #9 + '| ' +
        getFullName(FieldByName('Player5').AsInteger));
      redExport.Lines.Add('Player 6' + #9 + '| ' +
        getFullName(FieldByName('Player6').AsInteger));
      redExport.Lines.Add('Player 7' + #9 + '| ' +
        getFullName(FieldByName('Player7').AsInteger));
      redExport.Lines.Add('Player 8' + #9 + '| ' +
        getFullName(FieldByName('Player8').AsInteger));
      redExport.Lines.Add('Winner' + #9 + '| ' +
        getFullName(FieldByName('WinningPlayer').AsInteger));

      { because we are using a rich edit, export to a rich text file to keep formatting! }
      sFile := cmbTournaments.Text + '.rtf';
      redExport.Lines.SaveToFile(sFile);
      ShowMessage('Exported tournament to: ' + sFile);
      { open the exported file }
      ShellExecute(Handle, 'open', pChar(sFile), nil, nil, SW_SHOWNORMAL);
    end;
  end
  else
  begin
    ShowMessage('Please select a tournament to export first.');
  end;

end;

procedure TfrmTournamentView.btnShowTournamentClick(Sender: TObject);
var
  tS1, tS2, tS3: TShape;
  tEditLabel: TLabel;
  i, tournamentsize: Integer;
begin
  // OUTPUT LINES
  if not(cmbTournaments.Text = '') then
  begin
    dmTournament.tblGames.Locate('GameTitle', cmbTournaments.Text, []);
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
        4) Color set to one of four colors.

        Note: 2 and 3 are performed by a utility function under util_u.
      }
      case i of
        1 .. 8:
          begin
            tEditLabel := TLabel(FindComponent('QF' + IntToStr(i)));
            try
              tEditLabel.Caption :=
                getFullName(dmTournament.tblGameResults['QuarterFinals' +
                IntToStr(i)]);
            except
              tEditLabel.Caption := 'TBD';
            end;
            util.alignLabel(tEditLabel);
            tEditLabel.Font.Color := $007A2346;
          end;
        9 .. 12:
          begin
            tEditLabel := TLabel(FindComponent('SF' + IntToStr(i - 8)));
            try
              tEditLabel.Caption :=
                getFullName(dmTournament.tblGameResults
                ['SemiFinals' + IntToStr(i - 8)]);
            except
              tEditLabel.Caption := 'TBD';
            end;

            util.alignLabel(tEditLabel);
            tEditLabel.Font.Color := $00DDDDF5;
          end;
        13 .. 14:
          begin
            tEditLabel := TLabel(FindComponent('F' + IntToStr(i - 12)));
            try
              tEditLabel.Caption :=
                getFullName(dmTournament.tblGameResults
                ['Finals' + IntToStr(i - 12)]);
            except
              tEditLabel.Caption := 'TBD';
            end;
            util.alignLabel(tEditLabel);
            tEditLabel.Font.Color := $00A74AF8;
          end;
        15:
          begin
            tEditLabel := TLabel(FindComponent('Winner'));
            try
              tEditLabel.Caption :=
                getFullName(dmTournament.tblGameResults['Winner']);
            except
              tEditLabel.Caption := 'TBD';
            end;
            util.alignLabel(tEditLabel);
            tEditLabel.Font.Color := TColor($0076FCF7);
          end;
      end;

      // time labels
      lblTimePerMatch.Caption := 'Time per Match: ' +
        IntToStr(dmTournament.tblGames['TimePerMatch']) + ' minutes';
      lblWholeGameTime.Caption := 'Est. time to complete tournament: ' +
        IntToStr(dmTournament.tblGames['TimePerMatch'] * 7) + ' minutes';
    end;

  end
  else if (cmbTournaments.Text = '') then
  begin
    ShowMessage('Please select a tournament to view using the dropdown box!');
  end;

end;

procedure TfrmTournamentView.FormActivate(Sender: TObject);
begin
  // if user was not already editing the form (used so it doesnt reset if user comes back from managing tournament)
  if not(toggleEditMode.State = tssOn) then
  begin
    { clear combobox and populate with tournaments }
    cmbTournaments.Clear;
    dmTournament.tblGames.First;
    while not dmTournament.tblGames.Eof do
    begin
      cmbTournaments.Items.Add(dmTournament.tblGames['GameTitle']);
      dmTournament.tblGames.Next;
    end;
    cmbTournaments.Refresh;

    // clear labels so they can be filled later
    lblTimePerMatch.Caption := '';
    lblWholeGameTime.Caption := '';

    // show certain components based on user level
    if (authentication_u.iUserLevel = 2) or (authentication_u.iUserLevel = 3)
    then
    begin
      lblEditMode.Visible := true;
      toggleEditMode.State := tssOff;
      toggleEditMode.Visible := true;
      btnDeleteTournament.Visible := false;
    end
    else if authentication_u.iUserLevel = 1 then
    begin
      lblEditMode.Visible := false;
      toggleEditMode.State := tssOff;
      toggleEditMode.Visible := false;
      btnDeleteTournament.Visible := false;
    end;
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
  // get the shape number by taking last 2 letters
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
  // initialX, initialY = starting point of line
  initialX := shp1.Left + shp1.Width;
  initialY := shp1.Top + Round(shp1.Height / 2);
  canvas.MoveTo(initialX, initialY);
  // moveX, moveY = where it is moving to after start
  moveX := initialX + Round(shp3.Left / divisionFactor);
  // if shape 1 is above shape 3, then subtract to get to the final shape, else add
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
  if toggleEditMode.State = tssOn then
  begin
    if not(cmbTournaments.Text = '') then
    begin
      frmManageTournament.Show;
      frmManageTournament.FormActivate(Sender);
    end
    else
    begin
      ShowMessage('Please select a tournament that you want to edit first.');
    end;
  end;
end;

procedure TfrmTournamentView.toggleEditModeClick(Sender: TObject);
begin
  // when edit mode gets toggled on
  if toggleEditMode.State = tssOn then
  begin
    ShowMessage
      ('You have entered edit mode. To modify your tournament, click on one of the shapes!');

    // show modifiable tournaments
    { only filter is userlevel is 2. admins should be able to modify anything :) }
    cmbTournaments.Clear;
    if iUserLevel = 2 then
    begin
      // only show tournaments that the manager has permission to manage
      dmTournament.tblGames.Filtered := false;
      dmTournament.tblGames.Filter := 'GameManager = ' +
        IntToStr(authentication_u.iUserID);
      dmTournament.tblGames.Filtered := true;
    end;
    dmTournament.tblGames.First;
    while not dmTournament.tblGames.Eof do
    begin
      // fill combo box with tournaments that can be managed
      cmbTournaments.Items.Add(dmTournament.tblGames['GameTitle']);
      dmTournament.tblGames.Next;
    end;
    cmbTournaments.Refresh;

    btnDeleteTournament.Visible := true;
  end;

  // if edit mode is turned off, disable the filter + show ALL tournaments!
  if toggleEditMode.State = tssOff then
  begin
    cmbTournaments.Clear;
    dmTournament.tblGames.Filtered := false;
    dmTournament.tblGames.First;
    while not dmTournament.tblGames.Eof do
    begin
      cmbTournaments.Items.Add(dmTournament.tblGames['GameTitle']);
      dmTournament.tblGames.Next;
    end;
    cmbTournaments.Refresh;

    btnDeleteTournament.Visible := false;
  end;
end;

end.
