object TimeAnalyseFrm: TTimeAnalyseFrm
  Left = 318
  Top = 176
  AutoScroll = False
  Caption = #25353#26102#38388#20998#26512
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
    Top = 158
    Width = 592
    Height = 215
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 129
      Top = 1
      Height = 213
    end
    object Splitter1: TSplitter
      Left = 276
      Top = 1
      Height = 213
    end
    object DBGridEh_DayC: TDBGridEh
      Left = 279
      Top = 1
      Width = 312
      Height = 213
      Align = alClient
      AutoFitColWidths = True
      DataSource = Ds_DayC
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
      OnDrawColumnCell = DBGridEh_DayCDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = #26085#26399
          Footer.ValueType = fvtCount
          Footers = <>
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = #28040#36153#21517#31216
          Footer.Value = #24635#39069
          Footer.ValueType = fvtStaticText
          Footers = <
            item
              Value = #24179#22343
              ValueType = fvtStaticText
            end
            item
              Value = #24635#39069
              ValueType = fvtStaticText
            end>
          Width = 60
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
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = #28040#36153#31867#22411
          Footers = <>
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = #27880#35299
          Footers = <>
          Width = 134
        end>
    end
    object DBGridEh_MontS: TDBGridEh
      Left = 1
      Top = 1
      Width = 128
      Height = 213
      Align = alLeft
      AutoFitColWidths = True
      DataSource = DS_MonthS
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
          FieldName = #26376#20221
          Footer.ValueType = fvtCount
          Footers = <
            item
              Value = #24179#22343
              ValueType = fvtStaticText
            end
            item
              Value = #24635#39069
              ValueType = fvtStaticText
            end>
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = #24635#39069
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
        end>
    end
    object DBGridEh_DayS: TDBGridEh
      Left = 132
      Top = 1
      Width = 144
      Height = 213
      Align = alLeft
      AutoFitColWidths = True
      DataSource = Ds_DayS
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
      SortLocal = True
      SumList.Active = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGridEh_DaySCellClick
      OnDrawColumnCell = DBGridEh_DaySDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = #21495
          Footer.ValueType = fvtCount
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
          Width = 50
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
          Width = 50
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 158
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object Chart1: TChart
      Left = 1
      Top = 1
      Width = 496
      Height = 156
      AllowPanning = pmNone
      AnimatedZoom = True
      AnimatedZoomSteps = 14
      BackWall.Brush.Color = clWhite
      Gradient.EndColor = 8454143
      Gradient.Visible = True
      MarginLeft = 5
      MarginTop = 5
      Title.Font.Charset = GB2312_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -13
      Title.Font.Name = #23435#20307
      Title.Font.Style = []
      Title.Text.Strings = (
        #26102#38388#20998#26512)
      Chart3DPercent = 10
      LeftAxis.LabelsSeparation = 50
      LeftAxis.LabelStyle = talValue
      LeftAxis.MinorTickCount = 7
      LeftAxis.TickInnerLength = 1
      LeftAxis.TickLength = 1
      LeftAxis.Title.Angle = 0
      LeftAxis.Title.Caption = #20803
      Legend.Color = clYellow
      Legend.ColorWidth = 35
      Legend.LegendStyle = lsValues
      Legend.ShadowSize = 0
      View3DOptions.Elevation = 344
      View3DOptions.HorizOffset = -6
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 2
      View3DOptions.Rotation = 360
      View3DOptions.VertOffset = 8
      Align = alClient
      BevelWidth = 0
      TabOrder = 0
      object Series1: TBarSeries
        Marks.Arrow.Color = 4194368
        Marks.ArrowLength = 20
        Marks.BackColor = clSilver
        Marks.Font.Charset = DEFAULT_CHARSET
        Marks.Font.Color = clBlack
        Marks.Font.Height = -12
        Marks.Font.Name = 'Arial'
        Marks.Font.Style = []
        Marks.Style = smsValue
        Marks.Visible = True
        SeriesColor = clRed
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object Panel3: TPanel
      Left = 497
      Top = 1
      Width = 94
      Height = 156
      Align = alRight
      TabOrder = 1
      object SpeedButton2: TSpeedButton
        Left = 13
        Top = 46
        Width = 75
        Height = 25
        Caption = #26597#35810
        Flat = True
        OnClick = SpeedButton2Click
      end
      object SpeedButton1: TSpeedButton
        Left = 13
        Top = 78
        Width = 75
        Height = 27
        Caption = #25171#21360
        Flat = True
        OnClick = SpeedButton1Click
      end
      object UpDown1: TUpDown
        Left = 54
        Top = 14
        Width = 22
        Height = 21
        Associate = Edt_Year
        Min = 2002
        Max = 2050
        Position = 2004
        TabOrder = 0
      end
      object Edt_Year: TEdit
        Left = 10
        Top = 14
        Width = 44
        Height = 21
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 1
        Text = '2,004'
      end
    end
  end
  object DS_MonthS: TDataSource
    DataSet = ExpensenDM.adoQ_SomeMonthS
    Left = 57
    Top = 298
  end
  object Ds_DayC: TDataSource
    DataSet = ExpensenDM.adoQ_SomeDayC
    Left = 480
    Top = 281
  end
  object Ds_DayS: TDataSource
    DataSet = ExpensenDM.adoQ_SomeDayS
    Left = 224
    Top = 313
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
    Left = 56
    Top = 224
  end
  object PrintDBGridEh2: TPrintDBGridEh
    DBGridEh = DBGridEh_DayS
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
    Left = 192
    Top = 208
  end
  object PrintDBGridEh3: TPrintDBGridEh
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
    Left = 376
    Top = 216
  end
end
