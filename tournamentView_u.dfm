object frmTournamentView: TfrmTournamentView
  Left = 0
  Top = 0
  Caption = 'Tournament Viewer | TournyMan'
  ClientHeight = 466
  ClientWidth = 787
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  DesignSize = (
    787
    466)
  TextHeight = 15
  object Shape1: TShape
    Left = 8
    Top = 46
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape2: TShape
    Left = 8
    Top = 94
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape3: TShape
    Left = 8
    Top = 142
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape5: TShape
    Left = 8
    Top = 238
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape6: TShape
    Left = 8
    Top = 286
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape7: TShape
    Left = 8
    Top = 334
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape8: TShape
    Left = 8
    Top = 382
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape9: TShape
    Left = 224
    Top = 70
    Width = 121
    Height = 25
    ParentCustomHint = False
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape10: TShape
    Left = 224
    Top = 166
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape11: TShape
    Left = 224
    Top = 262
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape12: TShape
    Left = 224
    Top = 358
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape13: TShape
    Left = 440
    Top = 118
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape14: TShape
    Left = 440
    Top = 310
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape15: TShape
    Left = 656
    Top = 219
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Shape4: TShape
    Left = 8
    Top = 190
    Width = 121
    Height = 25
    Brush.Color = clTeal
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 98
    Height = 21
    Caption = 'Quarter Finals'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 224
    Top = 8
    Width = 79
    Height = 21
    Caption = 'Semi Finals'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 440
    Top = 8
    Width = 40
    Height = 21
    Caption = 'Finals'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 656
    Top = 8
    Width = 51
    Height = 21
    Caption = 'Winner'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object QF1: TLabel
    Left = 8
    Top = 46
    Width = 121
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object QF2: TLabel
    Left = 8
    Top = 94
    Width = 121
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object QF3: TLabel
    Left = 8
    Top = 142
    Width = 121
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object QF4: TLabel
    Left = 8
    Top = 190
    Width = 121
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object QF5: TLabel
    Left = 8
    Top = 238
    Width = 121
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object QF6: TLabel
    Left = 8
    Top = 286
    Width = 121
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object QF7: TLabel
    Left = 8
    Top = 334
    Width = 121
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object QF8: TLabel
    Left = 8
    Top = 382
    Width = 121
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object SF1: TLabel
    Left = 224
    Top = 70
    Width = 121
    Height = 25
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object SF2: TLabel
    Left = 224
    Top = 166
    Width = 121
    Height = 25
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object SF3: TLabel
    Left = 224
    Top = 262
    Width = 121
    Height = 25
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object SF4: TLabel
    Left = 224
    Top = 358
    Width = 121
    Height = 25
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object F1: TLabel
    Left = 440
    Top = 118
    Width = 121
    Height = 25
    AutoSize = False
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object F2: TLabel
    Left = 440
    Top = 310
    Width = 121
    Height = 25
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object Winner: TLabel
    Left = 656
    Top = 219
    Width = 121
    Height = 25
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
    OnClick = PlayerLabelClick
  end
  object lblEditMode: TLabel
    Left = 8
    Top = 447
    Width = 57
    Height = 15
    Caption = 'Edit Mode:'
  end
  object btnShowTournament: TButton
    Left = 642
    Top = 397
    Width = 139
    Height = 67
    Caption = 'Show Tournament'
    TabOrder = 0
    OnClick = btnShowTournamentClick
  end
  object ComboBox1: TComboBox
    Left = 464
    Top = 441
    Width = 172
    Height = 23
    TabOrder = 1
    TextHint = 'Select a tournament to view'
  end
  object toggleEditMode: TToggleSwitch
    Left = 71
    Top = 446
    Width = 73
    Height = 20
    TabOrder = 2
    OnClick = toggleEditModeClick
  end
  object btnExportTournament: TButton
    Left = 336
    Top = 440
    Width = 114
    Height = 25
    Caption = 'Export Tournament'
    TabOrder = 3
    OnClick = btnExportTournamentClick
  end
  object redOutput: TRichEdit
    Left = 672
    Top = 302
    Width = 99
    Height = 89
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
end
