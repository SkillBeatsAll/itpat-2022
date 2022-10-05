unit authenticationHelp_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, QRCode_u,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, ShellApi;

type
  TfrmAuthHelp = class(TForm)
    Label1: TLabel;
    lblSecret: TLabel;
    pbQR: TPaintBox;
    imgBackground: TImage;
    memUserInstructions: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    imgAppleStore: TImage;
    imgGoogleStore: TImage;
    procedure FormActivate(Sender: TObject);
    procedure pbQRPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure imgAppleStoreClick(Sender: TObject);
    procedure imgGoogleStoreClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuthHelp: TfrmAuthHelp;
  QRCodeBitmap: TBitmap;
  arrMemoLines: array [1 .. 9] of String;

implementation

uses authentication_u, util_u, Vcl.Styles, Vcl.Themes, System.UITypes;

{$R *.dfm}

procedure TfrmAuthHelp.FormActivate(Sender: TObject);
var
  QRCode: TDelphiZXingQRCode;
  iRow, iColumn: Integer;
  i: Integer;
begin
  util.setBackground(self);
  lblSecret.Caption := authentication_u.sOTP;

  // fill memo with user unique key + instructions
  memUserInstructions.Clear;

  for i := 1 to Length(arrMemoLines) do
  begin
    memUserInstructions.Lines.Add(arrMemoLines[i]);
  end;
  memUserInstructions.Lines[memUserInstructions.Lines.Count] := 'Your key: ' +
    '"' + authentication_u.sOTP + '"';

  // initialization
  QRCodeBitmap := TBitmap.Create;
  QRCode := TDelphiZXingQRCode.Create;

  try
    // QR Code = OTP
    QRCode.Data := 'otpauth://totp/' + authentication_u.sUsername +
      '@JoelCedrasPAT?secret=' + authentication_u.sOTP + '&issuer=' +
      authentication_u.sUsername;

    QRCode.Encoding := TQRCodeEncoding(0);
    QRCode.QuietZone := StrToIntDef('Auto', 4);
    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);

    // fill paintbox with QR code
    { from https://github.com/foxitsoftware/DelphiZXingQRCode/blob/master/TestApp/DelphiZXingQRCodeTestAppMainForm.pas }
    for iRow := 0 to QRCode.Rows - 1 do
    begin
      for iColumn := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[iRow, iColumn]) then
        begin
          QRCodeBitmap.Canvas.Pixels[iColumn, iRow] := $0065491b; {"indigo dye"}
        end
        else
        begin
          QRCodeBitmap.Canvas.Pixels[iColumn, iRow] := $00e5e5e7; {"platinum"}
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  pbQR.Repaint;
end;

procedure TfrmAuthHelp.FormCreate(Sender: TObject);
begin
  frmAuthHelp.Position := poDesktopCenter;
  arrMemoLines[1] := 'To use 2FA (2-factor authentication):';
  arrMemoLines[2] := '';
  arrMemoLines[3] := '(1) Install Authy from your app store.';
  arrMemoLines[4] := '(2) Click on the + ("Add Account").';
  arrMemoLines[5] := '(3) Enter your secret code / scan the QR code';
  arrMemoLines[6] := 'below.';
  arrMemoLines[7] := '(4) Give it a name and save it.';
  arrMemoLines[8] := '(5) Close this window and login!';
  arrMemoLines[9] := '';
end;

procedure TfrmAuthHelp.imgAppleStoreClick(Sender: TObject);
var
  sUrl: String;
begin
  sUrl := 'https://apps.apple.com/us/app/twilio-authy/id494168017';
  ShellExecute(HInstance, 'open', PChar(sUrl), nil, nil, SW_NORMAL);
end;

procedure TfrmAuthHelp.imgGoogleStoreClick(Sender: TObject);
var
  sUrl: String;
begin
  sUrl := 'https://play.google.com/store/apps/details?id=com.authy.authy';
  ShellExecute(HInstance, 'open', PChar(sUrl), nil, nil, SW_NORMAL)
end;

procedure TfrmAuthHelp.Label5Click(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmAuthHelp.pbQRPaint(Sender: TObject);
var
  qrScale: Real;
begin
  // Scale QR code correctly
  { credits to https://github.com/foxitsoftware/DelphiZXingQRCode/blob/master/TestApp/DelphiZXingQRCodeTestAppMainForm.pas }

  pbQR.Canvas.Brush.Color := clWhite;
  pbQR.Canvas.FillRect(Rect(0, 0, pbQR.Width, pbQR.Height));
  if ((QRCodeBitmap.Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (pbQR.Width < pbQR.Height) then
    begin
      qrScale := pbQR.Width / QRCodeBitmap.Width;
    end
    else
    begin
      qrScale := pbQR.Height / QRCodeBitmap.Height;
    end;
    pbQR.Canvas.StretchDraw(Rect(0, 0, Trunc(qrScale * QRCodeBitmap.Width),
      Trunc(qrScale * QRCodeBitmap.Height)), QRCodeBitmap);

  end;
end;

end.
