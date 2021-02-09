object UpdateConsumTypeFrm: TUpdateConsumTypeFrm
  Left = 289
  Top = 167
  Width = 600
  Height = 400
  Caption = #26816#26597#28040#36153#31867#22411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 177
    Width = 592
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 180
    Width = 592
    Height = 193
    Align = alClient
    Caption = #28040#36153#31867#22411#19981#19968#33268
    TabOrder = 0
    object DBGridEh_ConsumTypeError: TDBGridEh
      Left = 2
      Top = 15
      Width = 588
      Height = 176
      Align = alClient
      AutoFitColWidths = True
      DataSource = DS_ConsumTypeError
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      MinAutoFitWidth = 50
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh_ConsumTypeErrorDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = #24207#21495
          Footers = <>
          Title.TitleButton = True
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = #26085#26399
          Footers = <>
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #28040#36153#21517#31216
          Footers = <>
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #37329#39069
          Footers = <>
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #28040#36153#31867#22411
          Footers = <>
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #27880#35299
          Footers = <>
          Title.TitleButton = True
          Width = 300
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 592
    Height = 177
    Align = alTop
    Caption = #28040#36153#31867#22411#20026#31354
    TabOrder = 1
    object DBGridEh_ConsumTypeNull: TDBGridEh
      Left = 2
      Top = 15
      Width = 588
      Height = 160
      Align = alClient
      AutoFitColWidths = True
      DataSource = DS_FindISNull
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      MinAutoFitWidth = 50
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh_ConsumTypeNullDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = #24207#21495
          Footers = <>
          Title.TitleButton = True
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = #26085#26399
          Footers = <>
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #28040#36153#21517#31216
          Footers = <>
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #37329#39069
          Footers = <>
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #28040#36153#31867#22411
          Footers = <>
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #27880#35299
          Footers = <>
          Title.TitleButton = True
          Width = 300
        end>
    end
  end
  object DS_FindISNull: TDataSource
    DataSet = ExpensenDM.adoQryConsumTypeIsNull
    Left = 177
    Top = 80
  end
  object ActionList1: TActionList
    Left = 283
    Top = 297
    object actClose: TAction
      Category = 'Command'
      Caption = 'CloseAction'
      OnExecute = actCloseExecute
    end
  end
  object ConSumeTypeSoucre: TDataSource
    DataSet = ExpensenDM.OutLinkComeType
    Left = 361
    Top = 256
  end
  object DS_ConsumTypeError: TDataSource
    DataSet = ExpensenDM.Qry_ConsumTypeError
    Left = 176
    Top = 232
  end
end
