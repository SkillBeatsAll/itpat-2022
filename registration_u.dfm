object frmRegistration: TfrmRegistration
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Register | TournyMan'
  ClientHeight = 310
  ClientWidth = 288
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 15
  object imgBackground: TImage
    Left = 0
    Top = 0
    Width = 302
    Height = 319
    Stretch = True
  end
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 62
    Height = 17
    Caption = 'Username:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 59
    Height = 17
    Caption = 'Password:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 110
    Height = 17
    Caption = 'Confirm password:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object rgpUserLevel: TRadioGroup
    Left = 8
    Top = 124
    Width = 261
    Height = 113
    Caption = 'Select your account type:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Items.Strings = (
      'Spectator'
      'Manager')
    ParentFont = False
    TabOrder = 3
  end
  object btnRegister: TButton
    Left = 8
    Top = 256
    Width = 273
    Height = 49
    Caption = 'Register your account'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnRegisterClick
  end
  object edtUsername: TEdit
    Left = 148
    Top = 23
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtPassword: TEdit
    Left = 148
    Top = 55
    Width = 121
    Height = 23
    PasswordChar = '*'
    TabOrder = 1
  end
  object edtConfirmPassword: TEdit
    Left = 148
    Top = 87
    Width = 121
    Height = 23
    PasswordChar = '*'
    TabOrder = 2
  end
end
