object frmCreateTournament: TfrmCreateTournament
  Left = 0
  Top = 0
  Caption = 'Create a tournament | TournyMan'
  ClientHeight = 403
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 102
    Height = 15
    Caption = 'Tournament Name:'
  end
  object Label2: TLabel
    Left = 176
    Top = 8
    Width = 86
    Height = 15
    Caption = 'Select start date:'
  end
  object Label3: TLabel
    Left = 352
    Top = 8
    Width = 40
    Height = 15
    Caption = 'Players:'
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 80
    Width = 412
    Height = 297
    Caption = 'Select players for your tournament'
    TabOrder = 3
  end
  object edtTournamentName: TEdit
    Left = 16
    Top = 31
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 224
    Top = 120
    Width = 183
    Height = 246
    DragMode = dmAutomatic
    ItemHeight = 15
    TabOrder = 1
    OnDragDrop = ListBox1DragDrop
    OnDragOver = ListBox1DragOver
  end
  object ListBox2: TListBox
    Left = 16
    Top = 120
    Width = 183
    Height = 246
    DragMode = dmAutomatic
    ItemHeight = 15
    TabOrder = 2
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 31
    Width = 97
    Height = 23
    Date = 44798.000000000000000000
    Time = 0.744122754629643200
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 352
    Top = 29
    Width = 55
    Height = 23
    Enabled = False
    TabOrder = 5
    Text = '8'
  end
end
