object NameAnalyseFrm: TNameAnalyseFrm
  Left = 184
  Top = 92
  AutoScroll = False
  Caption = #28040#36153#21517#31216#20998#26512
  ClientHeight = 553
  ClientWidth = 800
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 800
    Height = 259
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    LeftWall.Brush.Color = clWhite
    LeftWall.Color = clSilver
    Title.Font.Charset = GB2312_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -13
    Title.Font.Name = #23435#20307
    Title.Font.Style = []
    Title.Text.Strings = (
      '')
    Title.Visible = False
    AxisVisible = False
    Chart3DPercent = 10
    ClipPoints = False
    Frame.Visible = False
    Legend.ShadowColor = 4227200
    Legend.ShadowSize = 4
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DOptions.Zoom = 98
    View3DWalls = False
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object PieSers: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsLabelValue
      Marks.Visible = True
      DataSource = ExpensenDM.NameAnayMastQry
      SeriesColor = clYellow
      Title = 'PieSeries'
      XLabelsSource = #28040#36153#21517#31216
      Circled = True
      CustomXRadius = 185
      CustomYRadius = 85
      ExplodeBiggest = 10
      OtherSlice.Text = 'Other'
      PiePen.Color = 4194368
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loDescending
      PieValues.ValueSource = #24635#39069
      RotationAngle = 80
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 259
    Width = 800
    Height = 30
    Align = alTop
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 255
      Top = 4
      Width = 58
      Height = 23
      Action = actQuery
      Caption = #26597#35810
      Flat = True
    end
    object SpeedButton1: TSpeedButton
      Left = 335
      Top = 4
      Width = 58
      Height = 23
      Action = PrintAct
      Flat = True
    end
    object RaBut_Month: TRadioButton
      Left = 127
      Top = 8
      Width = 48
      Height = 17
      Caption = #26376#20221':'
      TabOrder = 0
    end
    object RaBut_Year: TRadioButton
      Left = 6
      Top = 8
      Width = 51
      Height = 17
      Caption = #24180#20221':'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object DBNavigator1: TDBNavigator
      Left = 416
      Top = 1
      Width = 383
      Height = 28
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      Align = alRight
      Flat = True
      Hints.Strings = (
        #39318#26465#35760#24405
        #21069#26465#35760#24405
        #19979#26465#35760#24405
        #23614#26465#35760#24405
        #25554#20837#35760#24405
        #21024#38500#35760#24405
        #32534#36753#35760#24405
        #25552#20132#32534#36753
        #21462#28040#32534#36753
        #21047#26032#25968#25454)
      TabOrder = 2
    end
    object Edt_Year: TRzSpinEdit
      Left = 56
      Top = 4
      Width = 67
      Height = 21
      Max = 9999.000000000000000000
      Min = 1899.000000000000000000
      Value = 1899.000000000000000000
      TabOrder = 3
    end
    object Edt_Month: TRzSpinEdit
      Left = 183
      Top = 4
      Width = 52
      Height = 21
      Max = 12.000000000000000000
      Min = 1.000000000000000000
      Value = 1.000000000000000000
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 289
    Width = 800
    Height = 264
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 218
      Top = 1
      Height = 262
    end
    object DBGridEh3: TDBGridEh
      Left = 221
      Top = 1
      Width = 578
      Height = 262
      Align = alClient
      AutoFitColWidths = True
      DataSource = NameAnayDelitaDS
      Flat = True
      FooterColor = clCream
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGridEh3CellClick
      OnDrawColumnCell = DBGridEh3DrawColumnCell
      Columns = <
        item
          Alignment = taRightJustify
          EditButtons = <>
          FieldName = #26085#26399
          Footers = <
            item
              Value = #24635
              ValueType = fvtStaticText
            end
            item
              Value = #24179#22343
              ValueType = fvtStaticText
            end>
          Title.TitleButton = True
          Width = 80
        end
        item
          Alignment = taRightJustify
          EditButtons = <>
          FieldName = #28040#36153#21517#31216
          Footers = <
            item
              Color = clInfoBk
              ValueType = fvtCount
            end
            item
              Color = clInfoBk
              ValueType = fvtStaticText
            end>
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #37329#39069
          Footer.ValueType = fvtSum
          Footers = <
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ValueType = fvtSum
            end
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ValueType = fvtAvg
            end>
          Title.TitleButton = True
          Width = 100
        end
        item
          Alignment = taRightJustify
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
          Width = 150
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 1
      Width = 217
      Height = 262
      Align = alLeft
      AutoFitColWidths = True
      DataSource = NameAnayMastDS
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clInfoBk
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clBlack
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection]
      ParentFont = False
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGridEh2CellClick
      OnDrawColumnCell = DBGridEh2DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = #28040#36153#21517#31216
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clBlack
          Footer.Font.Height = -12
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.Value = #24635#37329#39069#65306
          Footer.ValueType = fvtStaticText
          Footers = <
            item
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Value = #24179#22343
              ValueType = fvtStaticText
            end
            item
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Value = #24635#39069
              ValueType = fvtStaticText
            end>
        end
        item
          EditButtons = <>
          FieldName = #24635#39069
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clBlack
          Footer.Font.Height = -12
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <
            item
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ValueType = fvtAvg
            end
            item
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ValueType = fvtSum
            end>
          Width = 100
        end>
    end
  end
  object NameAnayMastDS: TDataSource
    DataSet = ExpensenDM.NameAnayMastQry
    Left = 114
    Top = 306
  end
  object NameAnayDelitaDS: TDataSource
    DataSet = ExpensenDM.NameAnayDelitaQry
    Left = 360
    Top = 303
  end
  object ActionList1: TActionList
    Left = 410
    Top = 247
    object actQuery: TAction
      Caption = 'actQuery'
      OnExecute = actQueryExecute
    end
    object actBar: TAction
      Caption = 'actBar'
    end
    object actLine: TAction
      Caption = 'actLine'
    end
    object actPie: TAction
      Caption = 'actPie'
    end
    object actClose: TAction
      Caption = 'actClose'
      OnExecute = actCloseExecute
    end
    object PrintAct: TAction
      Caption = #25171#21360
      OnExecute = PrintActExecute
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh2
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 168
    Top = 320
  end
  object PrintDBGridEh2: TPrintDBGridEh
    DBGridEh = DBGridEh3
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 296
    Top = 320
  end
end
