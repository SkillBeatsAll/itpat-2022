unit adminScreen_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, dbmTournament, mainMenu_u, util_u;

type
  TfrmAdminScreen = class(TForm)
    PageControl1: TPageControl;
    Players: TTabSheet;
    Games: TTabSheet;
    GameResults: TTabSheet;
    Credentials: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBNavigator3: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator4: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdminScreen: TfrmAdminScreen;

implementation

{$R *.dfm}

procedure TfrmAdminScreen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  util.showFormHideSelf(frmMainMenu, Self);
end;

end.
