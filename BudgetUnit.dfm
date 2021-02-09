object BudgetFrm: TBudgetFrm
  Left = 316
  Top = 324
  AutoScroll = False
  Caption = #39044#31639
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 592
    Height = 205
    Align = alClient
    DataSource = DS_Budget
    ShowSerialNo = False
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clInfoBk
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clBlue
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyDown = DBGridEh1KeyDown
    OnKeyPress = DBGridEh1KeyPress
    OnTitleClick = DBGridEh1TitleClick
    Columns = <
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = #24207#21495
        Footer.Font.Charset = ANSI_CHARSET
        Footer.Font.Color = clBlue
        Footer.Font.Height = -12
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.Value = #39044#31639#39033#30446#25968#37327':'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = #39044#31639#39033#30446#21517#31216
        Footer.Font.Charset = ANSI_CHARSET
        Footer.Font.Color = clBlue
        Footer.Font.Height = -12
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtCount
        Footers = <>
        Title.TitleButton = True
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = #39044#31639#37319#36141#26102#38388
        Footer.Font.Charset = ANSI_CHARSET
        Footer.Font.Color = clBlue
        Footer.Font.Height = -12
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.Value = #39044#31639#24635#36164#37329':'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = #39044#31639#37329#39069
        Footer.Font.Charset = ANSI_CHARSET
        Footer.Font.Color = clBlue
        Footer.Font.Height = -12
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = #23436#25104#26102#38388
        Footer.Font.Charset = ANSI_CHARSET
        Footer.Font.Color = clBlue
        Footer.Font.Height = -12
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.Value = #23436#25104#24635#36164#37329':'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = #23436#25104#37329#39069
        Footer.Font.Charset = ANSI_CHARSET
        Footer.Font.Color = clBlue
        Footer.Font.Height = -12
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
        Title.TitleButton = True
        Width = 120
      end>
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 205
    Width = 592
    Height = 168
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.EndColor = 8454143
    Gradient.Visible = True
    Title.Font.Charset = GB2312_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -13
    Title.Font.Name = #23435#20307
    Title.Font.Style = []
    Title.Text.Strings = (
      'TDBChart')
    Align = alBottom
    Color = 65408
    TabOrder = 1
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsLegend
      Marks.Visible = False
      DataSource = ExpensenDM.adoQryBudget
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = #23436#25104#37329#39069
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = ExpensenDM.adoQryBudget
      SeriesColor = clGreen
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = #24207#21495
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = #39044#31639#37329#39069
    end
  end
  object DS_Budget: TDataSource
    DataSet = ExpensenDM.adoQryBudget
    Left = 426
    Top = 124
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      'DBGridEh1.<P>.Columns.ColumnsIndex'
      'DBGridEh1.<P>.Columns.<ForAllItems>.AutoFitColWidth'
      'DBGridEh1.<P>.Columns.<ForAllItems>.Font.Size'
      'DBGridEh1.<P>.Columns.<ForAllItems>.Width'
      'DBGridEh1.<P>.Font.Size'
      'DBGridEh1.<P>.Height'
      'DBGridEh1.<P>.Width')
    Left = 232
    Top = 128
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Path = 'Software\Microsoft\Windows\Money\Eh'
    Left = 296
    Top = 128
  end
end
