object InComePayOutFrm: TInComePayOutFrm
  Left = 299
  Top = 234
  Width = 389
  Height = 470
  Caption = #25910#20837#25903#20986#20998#26512
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
    Width = 381
    Height = 443
    Align = alClient
    DataSource = DataSource1
    ShowSerialNo = False
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clInfoBk
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clBlue
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghRowHighlight]
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = #24180#20221
        Footer.Color = clCream
        Footer.Value = #26376#20221#24635#25968
        Footer.ValueType = fvtStaticText
        Footers = <
          item
            Value = #32047#35745
            ValueType = fvtStaticText
          end
          item
            Value = #24179#22343
            ValueType = fvtStaticText
          end>
        Title.TitleButton = True
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = #26376#20221
        Footer.ValueType = fvtCount
        Footers = <
          item
            ValueType = fvtCount
          end
          item
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ValueType = fvtStaticText
          end>
        Title.TitleButton = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = #25910#20837
        Footer.ValueType = fvtAvg
        Footers = <
          item
            Alignment = taCenter
            DisplayFormat = #65509'#,##0.00;'#65509'-#,##0.00'
            ValueType = fvtSum
          end
          item
            DisplayFormat = #65509'#,##0.00;'#65509'-#,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ValueType = fvtAvg
          end>
        Title.TitleButton = True
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = #25903#20986
        Footer.ValueType = fvtAvg
        Footers = <
          item
            Alignment = taCenter
            DisplayFormat = #65509'#,##0.00;'#65509'-#,##0.00'
            ValueType = fvtSum
          end
          item
            DisplayFormat = #65509'#,##0.00;'#65509'-#,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ValueType = fvtAvg
          end>
        Title.TitleButton = True
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = #33410#20313
        Footer.ValueType = fvtAvg
        Footers = <
          item
            Alignment = taCenter
            DisplayFormat = #65509'#,##0.00;'#65509'-#,##0.00'
            ValueType = fvtSum
          end
          item
            DisplayFormat = #65509'#,##0.00;'#65509'-#,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ValueType = fvtAvg
          end>
        Title.TitleButton = True
        Width = 162
      end>
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = ExpensenDM.InComeAndPayOut
    Left = 32
    Top = 128
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
