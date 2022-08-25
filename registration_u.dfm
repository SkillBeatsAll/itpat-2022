object frmRegistration: TfrmRegistration
  Left = 0
  Top = 0
  Caption = 'Register | Tournament Manager'
  ClientHeight = 309
  ClientWidth = 289
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
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
    DefaultHeaderFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBtnText
    HeaderFont.Height = -13
    HeaderFont.Name = 'Segoe UI'
    HeaderFont.Style = []
    Items.Strings = (
      'Spectator'
      'Manager')
    ParentFont = False
    TabOrder = 0
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
    TabOrder = 1
    OnClick = btnRegisterClick
  end
  object edtUsername: TEdit
    Left = 148
    Top = 23
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object edtPassword: TEdit
    Left = 148
    Top = 55
    Width = 121
    Height = 23
    PasswordChar = '*'
    TabOrder = 3
  end
  object edtConfirmPassword: TEdit
    Left = 148
    Top = 87
    Width = 121
    Height = 23
    PasswordChar = '*'
    TabOrder = 4
  end
end
