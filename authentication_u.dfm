object frmAuthentication: TfrmAuthentication
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Authentication | TournyMan'
  ClientHeight = 293
  ClientWidth = 399
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
    Left = 100
    Top = 107
    Width = 56
    Height = 15
    Caption = 'Username:'
  end
  object Label2: TLabel
    Left = 100
    Top = 147
    Width = 53
    Height = 15
    Caption = 'Password:'
  end
  object Label3: TLabel
    Left = 100
    Top = 184
    Width = 80
    Height = 15
    Caption = 'Not registered?'
  end
  object lblRegisterRedirect: TLabel
    Left = 188
    Top = 184
    Width = 96
    Height = 15
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
    Width = 385
    Height = 77
    ParentShowHint = False
    ShowHint = False
  end
  object edtUsername: TEdit
    Left = 180
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Username'
  end
  object edtPassword: TEdit
    Left = 180
    Top = 144
    Width = 121
    Height = 23
    PasswordChar = #8226
    TabOrder = 1
    TextHint = 'Password'
  end
  object btnLogin: TButton
    Left = 318
    Top = 253
    Width = 79
    Height = 43
    Caption = 'Login'
    Style = bsCommandLink
    TabOrder = 2
    OnClick = btnLoginClick
  end
end
