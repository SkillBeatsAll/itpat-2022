unit authentication_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dbmTournament,
  OTPUtility_u,
  Vcl.ExtCtrls, authenticationHelp_u, jpeg, util_u, tournamentView_u,
  registration_u, mainMenu_u, Vcl.HtmlHelpViewer;

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
    imgLogoLong: TImage;
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
  iUserLevel, iUserID: Integer;

implementation

{$R *.dfm}
{ [Procedure | Login Button Clicked]
  (1) Checks if the username is found in DB, and whether the password associated with it is correctly entered.
  (2) Get user level; check if they need to enter OTP code (admin/manager)
  (3) Are credentials correct? -> Check OTP if it was required.
  -> Show main form!
}

procedure TfrmAuthentication.btnLoginClick(Sender: TObject);
var
  sSecret: String;
  iUserOTP: Integer;
begin
  with dmTournament do
  begin
    if (tblCredentials.Locate('Username', edtUsername.Text, [])) and
      (tblCredentials['Password'] = edtPassword.Text) then
    begin
      iUserLevel := tblCredentials['UserLevel'];
      iUserID := tblCredentials['UserID'];
      sUsername := tblCredentials['Username'];
      // if user is manager / admin
      if iUserLevel in [2, 3] then
      begin
        sSecret := tblCredentials['Secret'];
        iUserOTP := StrToInt(InputBox('2-Factor Authentication (2FA)',
          '2FA Code:', ''));
      end;

      // if the secret for the record is nothing (null), then the user does not need an OTP code (is not a manager/admin)!
      if sSecret = NullAsStringValue then
      begin
        ShowMessage('You have successfully logged in!');
        util.showFormHideSelf(frmMainMenu, Self);
      end
      else if ValidateTOPT(sSecret, iUserOTP) then
      // otp entered successfully
      begin
        ShowMessage('You have successfully logged in!');
        util.showFormHideSelf(frmMainMenu, Self);
      end
      else
      begin // OTP wrong / blank
        ShowMessage('Incorrect OTP entered!');
        Exit;
      end;

    end
    else
    begin
      // username couldnt be found, or password with found username is incorrect.
      ShowMessage('Your username/password is incorrect.');
    end;
  end;
end;

procedure TfrmAuthentication.FormCreate(Sender: TObject);
begin
  util.setBackground(Self);

  imgLogoLong.Picture.LoadFromFile(GetCurrentDir +
    '/assets/logo/logo_long.png');
  imgLogoLong.Proportional := true;
end;

procedure TfrmAuthentication.lblRegisterRedirectClick(Sender: TObject);
begin
  frmRegistration.Show;
end;

end.
