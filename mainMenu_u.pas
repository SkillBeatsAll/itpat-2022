unit mainMenu_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMainMenu = class(TForm)
    lblWelcome: TLabel;
    btnTournamentView: TButton;
    btnManagePlayers: TButton;
    btnCreateTournament: TButton;
    btnManageTournament: TButton;
    btnAdminScreen: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTournamentViewClick(Sender: TObject);
    procedure btnManagePlayersClick(Sender: TObject);
    procedure btnCreateTournamentClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

uses authentication_u, tournamentView_u, managePlayers_u, createTournament_u,
  util_u;

{$R *.dfm}

procedure TfrmMainMenu.btnCreateTournamentClick(Sender: TObject);
begin
  util.showFormHideSelf(frmCreateTournament, Self);
end;

procedure TfrmMainMenu.btnManagePlayersClick(Sender: TObject);
begin
  util.showFormHideSelf(frmManagePlayers, Self);
end;

procedure TfrmMainMenu.btnTournamentViewClick(Sender: TObject);
begin
  util.showFormHideSelf(frmTournamentView, Self);
end;

procedure TfrmMainMenu.FormActivate(Sender: TObject);
begin
  case authentication_u.iUserLevel of
    1:
      begin
        // permitted
        btnTournamentView.Enabled := true;

        // disallowed
        btnManagePlayers.Enabled := false;
        btnCreateTournament.Enabled := false;
        btnManageTournament.Enabled := false;
        btnAdminScreen.Enabled := false;
      end;
    2:
      begin
        // permitted
        btnTournamentView.Enabled := true;
        btnManagePlayers.Enabled := true;
        btnCreateTournament.Enabled := true;
        btnManageTournament.Enabled := true;

        // disallowed
        btnAdminScreen.Enabled := false;
      end;
    3:
      begin
        // permitted
        btnTournamentView.Enabled := true;
        btnManagePlayers.Enabled := true;
        btnCreateTournament.Enabled := true;
        btnManageTournament.Enabled := true;
        btnAdminScreen.Enabled := true;
      end;
  end;
  lblWelcome.Caption := 'Welcome, ' + authentication_u.sUsername;
  // center label!
  lblWelcome.Left := (Self.Width div 2) - (lblWelcome.Width div 2);
end;

procedure TfrmMainMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
