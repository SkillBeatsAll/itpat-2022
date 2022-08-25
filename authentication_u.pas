unit authentication_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dbmTournament,
  OTPUtility_u,
  Vcl.ExtCtrls, authenticationHelp_u, jpeg, util_u, tournamentView_u,
  registration_u, mainMenu_u;

type
  TfrmAuthentication = class(TForm)
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnLogin: TButton;
    imgBackground: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblRegisterRedirect: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblRegisterRedirectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmAuthentication: TfrmAuthentication;
  sOTP, sUsername, sPassword: String;
  iUserLevel: Integer;

implementation

uses Vcl.Themes, Vcl.Styles;

{$R *.dfm}

procedure TfrmAuthentication.btnLoginClick(Sender: TObject);

var
  sSecret: String;
  iUserOTP: Integer;
begin
  if (dmTournament.tblCredentials.Locate('Username', edtUsername.Text, [])) and
    (dmTournament.tblCredentials['Password'] = edtPassword.Text) then
  begin
    iUserLevel := dmTournament.tblCredentials['UserLevel'];
    sUsername := dmTournament.tblCredentials['Username'];
    if (iUserLevel = 2) or (iUserLevel = 3) then
    begin
      sSecret := dmTournament.tblCredentials['Secret'];
      iUserOTP := StrToInt(InputBox('2-Factor Authentication (2FA)',
        '2FA Code:', ''));
    end;

    if sSecret = NullAsStringValue then
    begin
      ShowMessage('You have successfully logged in!');
      frmMainMenu.Show;
      Self.Hide;
    end
    else if ValidateTOPT(sSecret, iUserOTP) then
    // otp entered successfully
    begin
      ShowMessage('You have successfully logged in!');
      frmMainMenu.Show;
      Self.Hide;
    end
    else
    begin // OTP wrong / blank
      ShowMessage('Incorrect OTP entered!');
      Exit;
    end;

  end
  else
  begin
    ShowMessage('Your username/password is incorrect.');
  end;
end;

procedure TfrmAuthentication.FormCreate(Sender: TObject);
begin
  util.setBackground(Self);
end;

procedure TfrmAuthentication.lblRegisterRedirectClick(Sender: TObject);
begin
  frmRegistration.Show;
end;

end.
