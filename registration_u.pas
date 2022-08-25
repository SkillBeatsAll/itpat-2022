unit registration_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  dbmTournament, OTPUtility_u;

type
  TfrmRegistration = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rgpUserLevel: TRadioGroup;
    btnRegister: TButton;
    edtUsername: TEdit;
    edtPassword: TEdit;
    edtConfirmPassword: TEdit;
    procedure btnRegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistration: TfrmRegistration;

implementation

uses authentication_u, authenticationHelp_u;

{$R *.dfm}

procedure TfrmRegistration.btnRegisterClick(Sender: TObject);
begin
  if not(edtUsername.Text = NullAsStringValue) and
    not(edtPassword.Text = NullAsStringValue) and
    not(rgpUserLevel.ItemIndex = -1) then
  begin
    if edtPassword.Text = edtConfirmPassword.Text then
    begin
      dmTournament.tblCredentials.Insert;
      authentication_u.sUsername := edtUsername.Text;
      authentication_u.sPassword := edtPassword.Text;
      dmTournament.tblCredentials['UserName'] := authentication_u.sUsername;
      dmTournament.tblCredentials['Password'] := authentication_u.sPassword;

      // get user level + write to db
      case rgpUserLevel.ItemIndex of
        0: // spectator
          authentication_u.iUserLevel := 1;
        1: // manager
          authentication_u.iUserLevel := 2;
      end;
      dmTournament.tblCredentials['UserLevel'] := iUserLevel;

      // otp only a requirement for managers
      if authentication_u.iUserLevel = 2 then
      begin
        authentication_u.sOTP := GenerateOTPSecret(16);
        dmTournament.tblCredentials['Secret'] := authentication_u.sOTP;
      end;
      dmTournament.tblCredentials.Post;

      ShowMessage('You have successfully registered!');
      frmAuthentication.Show;
      if authentication_u.iUserLevel = 2 then // only OTP if manager!
      begin
        frmAuthHelp.Show;
      end;
      Self.Hide;
    end
    else
    begin
      ShowMessage('Your passwords do not match!');
    end;
  end
  else
  begin
    ShowMessage('One of your fields are blank!');
  end;
end;

end.