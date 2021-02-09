object Fusers: TFusers
  Left = 403
  Top = 226
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #20462#25913#29992#25143#21517#21450#23494#30721
  ClientHeight = 172
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 33
    Top = 44
    Width = 64
    Height = 13
    AutoSize = False
    Caption = #26032#29992#25143#21517#65306
  end
  object Label2: TLabel
    Left = 33
    Top = 84
    Width = 36
    Height = 13
    AutoSize = False
    Caption = #23494#30721#65306
  end
  object Label3: TLabel
    Left = 33
    Top = 116
    Width = 60
    Height = 13
    AutoSize = False
    Caption = #30830#35748#23494#30721#65306
  end
  object Label4: TLabel
    Left = 32
    Top = 16
    Width = 65
    Height = 13
    AutoSize = False
    Caption = #21407#29992#25143#21517#65306
  end
  object Label5: TLabel
    Left = 104
    Top = 16
    Width = 113
    Height = 13
    AutoSize = False
  end
  object RzEdit1: TRzEdit
    Left = 97
    Top = 44
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = RzEdit1KeyPress
  end
  object RzEdit2: TRzEdit
    Left = 97
    Top = 84
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = RzEdit2KeyPress
  end
  object RzEdit3: TRzEdit
    Left = 97
    Top = 116
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
    OnKeyPress = RzEdit3KeyPress
  end
  object RzBitBtn1: TRzBitBtn
    Left = 144
    Top = 144
    Caption = #30830#23450
    TabOrder = 3
    OnClick = RzBitBtn1Click
  end
end
