object frmManageTournament: TfrmManageTournament
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Manage Tournament | TournyMan'
  ClientHeight = 270
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  DesignSize = (
    351
    270)
  TextHeight = 15
  object lblEditing: TLabel
    Left = 8
    Top = 8
    Width = 85
    Height = 15
    Caption = 'You are editing: '
  end
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 153
    Height = 15
    Caption = 'Select a player to place there:'
  end
  object Shape1: TShape
    Left = 8
    Top = 94
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape2: TShape
    Left = 8
    Top = 158
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Player1: TLabel
    Left = 8
    Top = 94
    Width = 121
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = []
  end
  object Player2: TLabel
    Left = 8
    Top = 158
    Width = 121
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = []
  end
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 343
    Height = 262
    OnPaint = PaintBox1Paint
  end
  object cmbPlayersToPick: TComboBox
    Left = 198
    Top = 129
    Width = 145
    Height = 23
    TabOrder = 0
    TextHint = 'Select a player here'
  end
  object btnUpdate: TButton
    Left = 8
    Top = 224
    Width = 335
    Height = 41
    Caption = 'Update Tournament'
    TabOrder = 1
    OnClick = btnUpdateClick
  end
end
