object TimeDetailAnalyFrm: TTimeDetailAnalyFrm
  Left = 17
  Top = 45
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'TimeDetailAnalyFrm'
  ClientHeight = 478
  ClientWidth = 717
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 717
    Height = 217
    AllowPanning = pmNone
    AllowZoom = False
    AnimatedZoomSteps = 5
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    LeftWall.Brush.Color = clWhite
    LeftWall.Color = clYellow
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    Title.Text.Strings = (
      'TDBChart')
    Title.Visible = False
    AxisVisible = False
    Chart3DPercent = 5
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.HorizOffset = 2
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DOptions.VertOffset = 25
    View3DOptions.Zoom = 93
    View3DWalls = False
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object LinSers: TLineSeries
      Active = False
      Marks.ArrowLength = 50
      Marks.BackColor = clWhite
      Marks.Font.Charset = ANSI_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -12
      Marks.Font.Name = #23435#20307
      Marks.Font.Style = []
      Marks.Frame.Color = 4210688
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 4194304
      Title = 'Lines'
      Pointer.Brush.Color = clLime
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Pen.Color = 8421631
      Pointer.Pen.Width = 2
      Pointer.Style = psCircle
      Pointer.VertSize = 5
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object BarSers: TBarSeries
      Active = False
      Marks.ArrowLength = 10
      Marks.Visible = True
      SeriesColor = 33023
      Title = 'BarSeries'
      BarStyle = bsCilinder
      BarWidthPercent = 20
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object PieSers: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsLabelValue
      Marks.Visible = True
      SeriesColor = clYellow
      Title = 'PieSeries'
      XLabelsSource = #21495
      Circled = True
      CustomXRadius = 130
      CustomYRadius = 95
      OtherSlice.Style = poBelowPercent
      OtherSlice.Text = 'Other'
      PiePen.Color = 4194368
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loDescending
      PieValues.ValueSource = #24635#39069
    end
  end
  object Button3: TButton
    Left = 250
    Top = 227
    Width = 106
    Height = 25
    Caption = #39292#22270
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button2: TButton
    Left = 130
    Top = 227
    Width = 106
    Height = 25
    Caption = #31435#26041#22270
    TabOrder = 2
    OnClick = Button2Click
  end
  object But_Line: TButton
    Left = 10
    Top = 227
    Width = 106
    Height = 25
    Caption = #30452#32447#22270
    TabOrder = 3
    OnClick = But_LineClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 459
    Width = 717
    Height = 19
    Panels = <>
  end
  object UpDown1: TUpDown
    Left = 433
    Top = 232
    Width = 25
    Height = 21
    Associate = Edt_Year
    Min = 2002
    Max = 2050
    Position = 2004
    TabOrder = 5
  end
  object Edt_Year: TEdit
    Left = 389
    Top = 232
    Width = 44
    Height = 21
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 6
    Text = '2,004'
  end
  object Button1: TButton
    Left = 533
    Top = 234
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 7
    OnClick = Button1Click
  end
  object Panel2: TPanel
    Left = 0
    Top = 264
    Width = 717
    Height = 195
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 8
    object Splitter2: TSplitter
      Left = 129
      Top = 1
      Height = 193
    end
    object Splitter1: TSplitter
      Left = 276
      Top = 1
      Height = 193
    end
    object DBGridEh_DayC: TDBGridEh
      Left = 279
      Top = 1
      Width = 437
      Height = 193
      Align = alClient
      DataSource = Ds_DayC
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clBtnFace
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clPurple
      FooterFont.Height = -12
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection]
      ParentFont = False
      SortLocal = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID'
          Footer.Value = #24635#35745
          Footer.ValueType = fvtStaticText
          Footers = <>
          Width = 30
        end
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
          Footers = <>
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = #37329#39069
          Footer.ValueType = fvtSum
          Footers = <>
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
      Height = 193
      Align = alLeft
      DataSource = DS_MonthS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clBtnFace
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clRed
      FooterFont.Height = -12
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection]
      ParentFont = False
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGridEh_MontSCellClick
      Columns = <
        item
          EditButtons = <>
          FieldName = #26376#20221
          Footer.ValueType = fvtCount
          Footers = <>
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = #24635#39069
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Width = 60
        end>
    end
    object DBGridEh_DayS: TDBGridEh
      Left = 132
      Top = 1
      Width = 144
      Height = 193
      Align = alLeft
      DataSource = Ds_DayS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clBtnFace
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clFuchsia
      FooterFont.Height = -12
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection]
      ParentFont = False
      SortLocal = True
      SumList.Active = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGridEh_DaySCellClick
      Columns = <
        item
          EditButtons = <>
          FieldName = #21495
          Footer.ValueType = fvtCount
          Footers = <>
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = #24635#39069
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 50
        end>
    end
  end
  object DS_MonthS: TDataSource
    Left = 96
    Top = 272
  end
  object Ds_DayC: TDataSource
    Left = 480
    Top = 280
  end
  object Ds_DayS: TDataSource
    Left = 224
    Top = 312
  end
end
