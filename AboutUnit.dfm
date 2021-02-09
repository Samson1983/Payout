object AboutFrm: TAboutFrm
  Left = 257
  Top = 201
  AlphaBlend = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #29256#26435#25152#26377
  ClientHeight = 207
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 40
    Top = 24
    Width = 49
    Height = 41
  end
  object Label2: TLabel
    Left = 8
    Top = 80
    Width = 121
    Height = 29
    AutoSize = False
    Caption = 'Label2'
  end
  object Button1: TButton
    Left = 56
    Top = 144
    Width = 75
    Height = 25
    Caption = #27880#20876
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 152
    Top = 8
    Width = 321
    Height = 193
    Lines.Strings = (
      #26032#22686#21151#33021': '
      'ctrl+'#19978#19979#28378#36718'  '#25918#22823#34920#26684'    F2       '#24377#20986#36873#25321#21015#34920' '
      'Esc            '#20851#38381#23376#31383'    F7       '#19975#33021#26597#35810#22120' '
      'Ctrl+A         '#25903#20986#31383#21475'    Ctrl+S   '#25910#20837#31383#21475'      '
      'Ctrl+D         '#25910#25903#31383#21475'    Ctrl+W   '#28040#36153#31867#22411#31383#21475
      'F11            '#31532#19968#26465'      F12      '#26368#21518#19968#26465
      'Insert         '#22686#21152'        Alt+Del  '#21024#38500
      'F1             '#23384#30424'        F4       '#25171#21360
      ''
      #31616#26131#24405#20837#65306#30331#24405#21518#65292#25353'Ctrl+A'#65292#25509#30528#25353'Insert'#38190#65292#20877#25353'2'#27425'F2'#38190
      #65292#26368#21518#25353#22238#36710#38190#30830#35748#36339#36716#65292'F1'#20445#23384#12290
      ''
      #19981#20351#29992#30382#32932','#21487#20197#25226#30446#24405'PersonInOut.ini'#25991#20214#20013#30340' '
      'SkindDataAction=1'#25913#20026
      'SkindDataAction=0; ')
    ReadOnly = True
    TabOrder = 1
  end
end
