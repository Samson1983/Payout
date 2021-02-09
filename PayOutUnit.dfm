object PayOutFrm: TPayOutFrm
  Left = 279
  Top = 214
  AutoScroll = False
  Caption = #25903#20986
  ClientHeight = 470
  ClientWidth = 646
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 646
    Height = 470
    Align = alClient
    DataSource = PayOutSource
    ShowSerialNo = False
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clInfoBk
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ImeName = #26368#24378#20116#31508#36755#20837#27861
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellMouseClick = DBGridEh1CellMouseClick
    OnColExit = DBGridEh1ColExit
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnDrawDataCell = DBGrideh1DrawDataCell
    OnKeyDown = DBGridEh1KeyDown
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = #26085#26399
        Footer.Value = #24635#35760#24405#25968#65306
        Footer.ValueType = fvtCount
        Footers = <>
        Title.TitleButton = True
        Width = 126
      end
      item
        EditButtons = <>
        FieldName = #28040#36153#21517#31216
        Footer.Value = #21512#35745#37329#39069#65306
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.TitleButton = True
        Width = 120
      end
      item
        ButtonStyle = cbsDropDown
        DisplayFormat = #65509'-#,##0.00'
        EditButtons = <>
        FieldName = #37329#39069
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.DisplayFormat = #65509'-#,##0.00'
        Footer.FieldName = #37329#39069
        Footer.Font.Charset = ANSI_CHARSET
        Footer.Font.Color = clRed
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = #28040#36153#31867#22411'2'
        Footers = <>
        Title.Caption = #28040#36153#31867#22411
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = #27880#35299
        Footers = <>
        Title.TitleButton = True
        Width = 135
      end>
  end
  object PayOutSource: TDataSource
    DataSet = adoQryPayOut
    Left = 249
    Top = 313
  end
  object adoQryPayOut: TADOQuery
    CacheSize = 1000
    Connection = ExpensenDM.ADOCon
    CursorLocation = clUseServer
    AfterEdit = adoQryPayOutAfterEdit
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select *'
      'From '#25903#20986#34920#32534#36753)
    Left = 198
    Top = 316
    object adoQryPayOutDSDesigner: TAutoIncField
      FieldName = #24207#21495
      ReadOnly = True
    end
    object adoQryPayOutDSDesigner2: TDateTimeField
      DisplayWidth = 18
      FieldName = #26085#26399
      OnSetText = adoQryPayOutDSDesigner2SetText
      DisplayFormat = 'yyyy'#39#24180#39'mm'#39#26376#39'dd'#39#26085#39
      EditMask = '0000/90/90;1;_'
    end
    object adoQryPayOutDSDesigner3: TWideStringField
      DisplayWidth = 17
      FieldName = #28040#36153#21517#31216
      Size = 70
    end
    object adoQryPayOutDSDesigner4: TBCDField
      DisplayWidth = 12
      FieldName = #37329#39069
      Precision = 19
    end
    object adoQryPayOutDSDesigner5: TWideStringField
      DisplayWidth = 15
      FieldName = #28040#36153#31867#22411
      Size = 50
    end
    object adoQryPayOutWideStringField2: TWideStringField
      FieldKind = fkLookup
      FieldName = #28040#36153#31867#22411'2'
      LookupDataSet = ExpensenDM.OutLinkComeType
      LookupKeyFields = #28040#36153#31867#22411
      LookupResultField = #28040#36153#31867#22411
      KeyFields = #28040#36153#31867#22411
      Lookup = True
    end
    object adoQryPayOutDSDesigner6: TWideStringField
      DisplayWidth = 14
      FieldName = #27880#35299
      Size = 70
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
