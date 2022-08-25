object frmAuthentication: TfrmAuthentication
  Left = 0
  Top = 0
  Caption = 'Authentication'
  ClientHeight = 188
  ClientWidth = 246
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
    Left = -2
    Top = -51
    Width = 339
    Height = 308
    Stretch = True
    Transparent = True
  end
  object Label1: TLabel
    Left = 14
    Top = 23
    Width = 56
    Height = 15
    Caption = 'Username:'
  end
  object Label2: TLabel
    Left = 14
    Top = 63
    Width = 53
    Height = 15
    Caption = 'Password:'
  end
  object Label3: TLabel
    Left = 14
    Top = 98
    Width = 80
    Height = 15
    Caption = 'Not registered?'
  end
  object lblRegisterRedirect: TLabel
    Left = 100
    Top = 98
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
  object edtUsername: TEdit
    Left = 94
    Top = 20
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Username'
  end
  object edtPassword: TEdit
    Left = 94
    Top = 60
    Width = 121
    Height = 23
    PasswordChar = #8226
    TabOrder = 1
    TextHint = 'Password'
  end
  object btnLogin: TButton
    Left = 165
    Top = 149
    Width = 79
    Height = 43
    Caption = 'Login'
    Style = bsCommandLink
    TabOrder = 2
    OnClick = btnLoginClick
  end
end
