object Form1: TForm1
  Left = 308
  Top = 221
  Width = 425
  Height = 251
  Caption = #36719#20214#21152#23494#28436#31034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 60
    Height = 13
    Caption = #31995#32479#29305#24449#30721
  end
  object labelSystemCode: TLabel
    Left = 82
    Top = 40
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 36
    Height = 13
    Caption = #31614#21517#30721
  end
  object Label3: TLabel
    Left = 16
    Top = 123
    Width = 36
    Height = 13
    Caption = #27880#20876#30721
  end
  object btUnRegister: TButton
    Left = 216
    Top = 168
    Width = 89
    Height = 25
    Caption = #35299#38500#27880#20876
    TabOrder = 4
    OnClick = btUnRegisterClick
  end
  object editSignature: TEdit
    Left = 56
    Top = 77
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object editRegCode: TEdit
    Left = 58
    Top = 120
    Width = 247
    Height = 21
    TabOrder = 1
  end
  object btGetRegCode: TButton
    Left = 320
    Top = 120
    Width = 81
    Height = 25
    Caption = #29983#25104#27880#20876#30721
    TabOrder = 2
    OnClick = btGetRegCodeClick
  end
  object btRegister: TButton
    Left = 120
    Top = 168
    Width = 65
    Height = 25
    Caption = #27880#20876
    TabOrder = 3
    OnClick = btRegisterClick
  end
  object Edit1: TEdit
    Left = 88
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
end
