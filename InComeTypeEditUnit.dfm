object InComeTypeEditFrm: TInComeTypeEditFrm
  Left = 331
  Top = 175
  AutoScroll = False
  Caption = #25910#20837#31867#22411
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 592
    Height = 373
    Align = alClient
    DataSource = DS_ConsumeType
    ShowSerialNo = False
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clGradientActiveCaption
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clYellow
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
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
    Columns = <
      item
        EditButtons = <>
        FieldName = #25910#20837#31867#22411
        Footers = <>
        Title.TitleButton = True
        Width = 182
      end>
  end
  object DS_ConsumeType: TDataSource
    DataSet = InComeType
    Left = 344
    Top = 96
  end
  object InComeType: TADOQuery
    CacheSize = 1000
    Connection = ExpensenDM.ADOCon
    CursorLocation = clUseServer
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select *'
      'From '#25910#20837#31867#22411
      '')
    Left = 306
    Top = 93
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
