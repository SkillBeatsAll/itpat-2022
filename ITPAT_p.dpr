program ITPAT_p;

uses
  Vcl.Forms,
  Base32Utility_u in 'Base32Utility_u.pas',
  OTPUtility_u in 'OTPUtility_u.pas',
  QRCode_u in 'QRCode_u.pas',
  dbmTournament in 'dbmTournament.pas' {dmTournament: TDataModule},
  tournamentView_u in 'tournamentView_u.pas' {frmTournamentView},
  authentication_u in 'authentication_u.pas' {frmAuthentication},
  authenticationHelp_u in 'authenticationHelp_u.pas' {frmAuthHelp},
  util_u in 'util_u.pas',
  Vcl.Themes,
  Vcl.Styles,
  mainMenu_u in 'mainMenu_u.pas' {frmMainMenu},
  registration_u in 'registration_u.pas' {frmRegistration},
  managePlayers_u in 'managePlayers_u.pas' {frmManagePlayers};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.Title := 'TournyMan';
  Application.CreateForm(TfrmAuthentication, frmAuthentication);
  Application.CreateForm(TdmTournament, dmTournament);
  Application.CreateForm(TfrmTournamentView, frmTournamentView);
  Application.CreateForm(TfrmAuthHelp, frmAuthHelp);
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.CreateForm(TfrmRegistration, frmRegistration);
  Application.CreateForm(TfrmManagePlayers, frmManagePlayers);
  Application.Run;
end.
