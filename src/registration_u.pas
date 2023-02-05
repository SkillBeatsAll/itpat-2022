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
    imgBackground: TImage;
    procedure btnRegisterClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistration: TfrmRegistration;

implementation

uses authentication_u, authenticationHelp_u, util_u;

{$R *.dfm}

procedure TfrmRegistration.btnRegisterClick(Sender: TObject);
begin
  { if the username/password is not blank, and the radiogroup has something selected, then.. }
  if not(edtUsername.Text = NullAsStringValue) and
    not(edtPassword.Text = NullAsStringValue) and
    not(rgpUserLevel.ItemIndex = -1) then
  begin
    // do the passwords match?
    if edtPassword.Text = edtConfirmPassword.Text then
    begin
      with dmTournament do
      begin
        // if the username does NOT already exist..
        if not(tblCredentials.Locate('Username', edtUsername.Text, [])) then
        begin
          tblCredentials.Insert;
          authentication_u.sUsername := edtUsername.Text;
          authentication_u.sPassword := edtPassword.Text;
          tblCredentials['UserName'] := authentication_u.sUsername;
          tblCredentials['Password'] := authentication_u.sPassword;

          // get user level + write to db
          case rgpUserLevel.ItemIndex of
            0: // spectator
              authentication_u.iUserLevel := 1;
            1: // manager
              authentication_u.iUserLevel := 2;
          end;
          tblCredentials['UserLevel'] := iUserLevel;

          // otp only a requirement for managers
          if authentication_u.iUserLevel = 2 then
          begin
            authentication_u.sGeneratedSecret := GenerateOTPSecret(16);
            tblCredentials['Secret'] := authentication_u.sGeneratedSecret;
          end;
          tblCredentials.Post;

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
          ShowMessage('This username is already taken.');
          edtUsername.SetFocus;
        end
      end
    end
    else
    begin
      ShowMessage('Your passwords do not match!');
      edtPassword.SetFocus;
    end;
  end
  else
  begin
    ShowMessage('One of your fields are blank!');
  end;
end;

procedure TfrmRegistration.FormActivate(Sender: TObject);
begin
  util.setBackground(Self);
end;

end.
