object TypeAnalyseFrm: TTypeAnalyseFrm
  Left = 282
  Top = 138
  AutoScroll = False
  Caption = #28040#36153#31867#22411#20998#26512
  ClientHeight = 373
  ClientWidth = 592
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
  object Panel2: TPanel
    Left = 0
    Top = 237
    Width = 592
    Height = 136
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 238
      Top = 1
      Height = 134
    end
    object DBGridEh_DayC: TDBGridEh
      Left = 241
      Top = 1
      Width = 350
      Height = 134
      Align = alClient
      AutoFitColWidths = True
      DataSource = DS_TypeC
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
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      FooterRowCount = 2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection]
      ParentFont = False
      ReadOnly = True
      SortLocal = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGridEh_DayCCellClick
      OnDrawColumnCell = DBGridEh_DayCDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID'
          Footers = <
            item
              Font.Charset = GB2312_CHARSET
              Font.Color = clPurple
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              Value = #24179#22343
              ValueType = fvtStaticText
            end
            item
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              Value = #24635#39069
              ValueType = fvtStaticText
            end>
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = #26085#26399
          Footer.ValueType = fvtCount
          Footers = <>
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = #28040#36153#21517#31216
          Footers = <>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #37329#39069
          Footer.ValueType = fvtSum
          Footers = <
            item
              Font.Charset = GB2312_CHARSET
              Font.Color = clPurple
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              ValueType = fvtAvg
            end
            item
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              ValueType = fvtSum
            end>
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = #28040#36153#31867#22411
          Footers = <>
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = #27880#35299
          Footers = <>
          Width = 140
        end>
    end
    object DBGridEh_MontS: TDBGridEh
      Left = 1
      Top = 1
      Width = 237
      Height = 134
      Align = alLeft
      AutoFitColWidths = True
      DataSource = DS_TypeS
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
      ReadOnly = True
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGridEh_MontSCellClick
      OnDrawColumnCell = DBGridEh_MontSDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = #28040#36153#31867#22411
          Footer.ValueType = fvtCount
          Footers = <
            item
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Value = #24179#22343
              ValueType = fvtStaticText
            end
            item
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Value = #24635#39069
              ValueType = fvtStaticText
            end>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = #24635#39069
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 237
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 203
      Width = 590
      Height = 33
      Align = alBottom
      TabOrder = 0
      object Label1: TLabel
        Left = 11
        Top = 8
        Width = 12
        Height = 13
        AutoSize = False
        Caption = #24180
      end
      object Label2: TLabel
        Left = 108
        Top = 9
        Width = 12
        Height = 13
        AutoSize = False
        Caption = #26376
      end
      object SpeedButton2: TSpeedButton
        Left = 198
        Top = 4
        Width = 75
        Height = 25
        Action = actQuery
        Caption = #26597#35810
        Flat = True
      end
      object SpeedButton1: TSpeedButton
        Left = 297
        Top = 4
        Width = 75
        Height = 25
        Action = actPrint
        Flat = True
      end
      object UpDown1: TUpDown
        Left = 74
        Top = 5
        Width = 21
        Height = 21
        Associate = Edt_Year
        Min = 2003
        Max = 2050
        Position = 2004
        TabOrder = 0
      end
      object Edt_Year: TEdit
        Left = 30
        Top = 5
        Width = 44
        Height = 21
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 1
        Text = '2,004'
      end
      object Edt_month: TEdit
        Left = 127
        Top = 4
        Width = 44
        Height = 21
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 2
        Text = '1'
      end
      object UpDown2: TUpDown
        Left = 171
        Top = 4
        Width = 20
        Height = 21
        Associate = Edt_month
        Min = 1
        Max = 12
        Position = 1
        TabOrder = 3
      end
      object DBNavigator1: TDBNavigator
        Left = 206
        Top = 1
        Width = 383
        Height = 31
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
        TabOrder = 4
      end
    end
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 590
      Height = 202
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
      Align = alClient
      Color = clSilver
      TabOrder = 1
      object PieSers: TPieSeries
        Marks.ArrowLength = 8
        Marks.Style = smsLabelValue
        Marks.Visible = True
        DataSource = ExpensenDM.adoQ_ConsumeTypeS
        SeriesColor = clYellow
        Title = 'PieSeries'
        XLabelsSource = #28040#36153#31867#22411
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
  end
  object DS_TypeS: TDataSource
    DataSet = ExpensenDM.adoQ_ConsumeTypeS
    Left = 158
    Top = 304
  end
  object DS_TypeC: TDataSource
    DataSet = ExpensenDM.adoQ_ConsumeTypeC
    Left = 400
    Top = 270
  end
  object ActionList1: TActionList
    Left = 401
    Top = 208
    object actQuery: TAction
      Caption = 'actQuery'
      OnExecute = actQueryExecute
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
    object actPrint: TAction
      Caption = #25171#21360
      OnExecute = actPrintExecute
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh_MontS
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
    Left = 128
    Top = 304
  end
  object PrintDBGridEh2: TPrintDBGridEh
    DBGridEh = DBGridEh_DayC
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
    Left = 368
    Top = 272
  end
end
