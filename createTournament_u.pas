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
    ListBox1: TListBox;
    ListBox2: TListBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCreateTournament: TfrmCreateTournament;

implementation

{$R *.dfm}

procedure TfrmCreateTournament.FormActivate(Sender: TObject);
begin
  dmTournament.tblPlayers.First;
  while not dmTournament.tblPlayers.Eof do
  begin
    ListBox2.Items.Add(dmTournament.tblPlayers['FirstName'] + ' ' +
      dmTournament.tblPlayers['LastName']);
    dmTournament.tblPlayers.Next;
  end;

end;

procedure TfrmCreateTournament.ListBox1DragDrop(Sender, Source: TObject;
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

procedure TfrmCreateTournament.ListBox1DragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source = ListBox2 then
    Accept := True;
end;

end.
