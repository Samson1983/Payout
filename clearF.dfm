object fclear: Tfclear
  Left = 277
  Top = 210
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #28165#31354#25968#25454#31383#21475
  ClientHeight = 221
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzGroupBox2: TRzGroupBox
    Left = 8
    Top = 8
    Width = 409
    Height = 57
    TabOrder = 0
    object Label1: TLabel
      Left = 200
      Top = 32
      Width = 12
      Height = 13
      Caption = #33267
    end
    object DateTimePicker1: TDateTimePicker
      Left = 8
      Top = 24
      Width = 186
      Height = 21
      Date = 39860.568931747690000000
      Time = 39860.568931747690000000
      Enabled = False
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 216
      Top = 24
      Width = 186
      Height = 21
      Date = 39860.568991782410000000
      Time = 39860.568991782410000000
      Enabled = False
      TabOrder = 1
    end
    object RzCheckBox1: TRzCheckBox
      Left = 8
      Top = 0
      Width = 49
      Height = 17
      Caption = #25910#20837
      State = cbUnchecked
      TabOrder = 2
      OnClick = RzCheckBox1Click
    end
  end
  object RzGroupBox3: TRzGroupBox
    Left = 8
    Top = 72
    Width = 409
    Height = 57
    TabOrder = 1
    object Label2: TLabel
      Left = 200
      Top = 32
      Width = 12
      Height = 13
      Caption = #33267
    end
    object DateTimePicker3: TDateTimePicker
      Left = 8
      Top = 24
      Width = 186
      Height = 21
      Date = 39860.569074791670000000
      Time = 39860.569074791670000000
      Enabled = False
      TabOrder = 0
    end
    object DateTimePicker4: TDateTimePicker
      Left = 216
      Top = 24
      Width = 186
      Height = 21
      Date = 39860.569094687490000000
      Time = 39860.569094687490000000
      Enabled = False
      TabOrder = 1
    end
    object RzCheckBox2: TRzCheckBox
      Left = 8
      Top = 0
      Width = 49
      Height = 17
      Caption = #25903#20986
      State = cbUnchecked
      TabOrder = 2
      OnClick = RzCheckBox2Click
    end
  end
  object RzCheckGroup1: TRzCheckGroup
    Left = 8
    Top = 136
    Width = 409
    Height = 49
    Caption = #31867#22411
    Columns = 3
    Items.Strings = (
      #39044#31639
      #25910#20837#31867#22411
      #28040#36153#31867#22411)
    TabOrder = 2
    CheckStates = (
      0
      0
      0)
  end
  object RzBitBtn4: TRzBitBtn
    Left = 120
    Top = 192
    Caption = #20840#37096#28165#31354
    TabOrder = 3
    OnClick = RzBitBtn4Click
  end
  object RzBitBtn1: TRzBitBtn
    Left = 224
    Top = 192
    Caption = #30830#23450
    TabOrder = 4
    OnClick = RzBitBtn1Click
  end
end
