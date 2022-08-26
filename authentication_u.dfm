object frmAuthentication: TfrmAuthentication
  Left = 0
  Top = 0
  Caption = 'Authentication'
  ClientHeight = 242
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object imgBackground: TImage
    Left = -8
    Top = -11
    Width = 425
    Height = 356
    Stretch = True
    Transparent = True
  end
  object Label1: TLabel
    Left = 80
    Top = 91
    Width = 56
    Height = 16
    Caption = 'Username:'
  end
  object Label2: TLabel
    Left = 80
    Top = 131
    Width = 53
    Height = 16
    Caption = 'Password:'
  end
  object Label3: TLabel
    Left = 80
    Top = 168
    Width = 80
    Height = 16
    Caption = 'Not registered?'
  end
  object lblRegisterRedirect: TLabel
    Left = 168
    Top = 168
    Width = 96
    Height = 16
    Cursor = crHandPoint
    Caption = 'Create an account'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lblRegisterRedirectClick
  end
  object imgLogoLong: TImage
    Left = 8
    Top = 8
    Width = 334
    Height = 63
  end
  object edtUsername: TEdit
    Left = 160
    Top = 88
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Username'
  end
  object edtPassword: TEdit
    Left = 160
    Top = 128
    Width = 121
    Height = 23
    PasswordChar = #8226
    TabOrder = 1
    TextHint = 'Password'
  end
  object btnLogin: TButton
    Left = 276
    Top = 205
    Width = 79
    Height = 43
    Caption = 'Login'
    Style = bsCommandLink
    TabOrder = 2
    OnClick = btnLoginClick
  end
end
