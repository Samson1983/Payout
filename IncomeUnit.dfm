object IncomeFrm: TIncomeFrm
  Left = 385
  Top = 370
  AutoScroll = False
  Caption = #25910#20837
  ClientHeight = 573
  ClientWidth = 792
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
    Top = 376
    Width = 792
    Height = 5
    Cursor = crVSplit
    Align = alBottom
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 792
    Height = 376
    Align = alClient
    DataSource = DS_ALLIN
    ShowSerialNo = False
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clInfoBk
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clBlue
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghClearSelection, dghAutoSortMarking, dghIncSearch, dghPreferIncSearch, dghDblClickOptimizeColWidth, dghDialogFind]
    ParentFont = False
    RowHeight = 1
    RowLines = 1
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
        EditButtons = <>
        FieldName = #26085#26399
        Footer.Value = #24635#35760#24405#25968':'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #25910#20837#39033#30446
        Footer.Value = #21512#35745':'
        Footer.ValueType = fvtStaticText
        Footers = <>
      end
      item
        ButtonStyle = cbsDropDown
        DisplayFormat = #65509'#,##0.00'
        EditButtons = <>
        FieldName = #37329#39069
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.DisplayFormat = #65509'#,##0.00'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
      end>
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 381
    Width = 792
    Height = 192
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = clSilver
    BottomWall.Color = clSilver
    Gradient.EndColor = 8454143
    Gradient.Visible = True
    Title.Font.Charset = GB2312_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -13
    Title.Font.Name = #23435#20307
    Title.Font.Style = []
    Title.Text.Strings = (
      #21382#24180#26469#25910#20837)
    BackColor = clSilver
    LeftAxis.MinorTickCount = 22
    LeftAxis.MinorTickLength = 0
    LeftAxis.TickLength = 0
    Legend.Color = 65408
    Legend.DividingLines.Width = 6
    Legend.TopPos = 8
    View3DOptions.Zoom = 106
    Align = alBottom
    TabOrder = 1
    object Series1: TBarSeries
      Marks.Arrow.Color = clBlue
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 4227327
      SideMargins = False
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = #26085#26399
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = #37329#39069
    end
  end
  object DS_ALLIN: TDataSource
    DataSet = adoQurIn
    Left = 389
    Top = 109
  end
  object adoQurIn: TADOQuery
    CacheSize = 1000
    Connection = ExpensenDM.ADOCon
    CursorLocation = clUseServer
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select *'
      'From '#25910#20837#34920#32534#36753)
    Left = 225
    Top = 115
    object adoQurInDSDesigner2: TDateTimeField
      FieldName = #26085#26399
      OnSetText = adoQurInDSDesigner2SetText
      DisplayFormat = 'yyyy'#39#24180#39'mm'#39#26376#39'dd'#39#26085#39
      EditMask = '0000/90/90;1;_'
    end
    object adoQurInDSDesigner3: TWideStringField
      DisplayWidth = 20
      FieldName = #25910#20837#39033#30446
      Size = 100
    end
    object adoQurInDSDesigner4: TBCDField
      FieldName = #37329#39069
      Precision = 19
    end
    object adoQurInDSDesigner5: TWideStringField
      DisplayWidth = 20
      FieldName = #22791#27880
      Size = 100
    end
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
