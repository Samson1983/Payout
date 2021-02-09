object AllPayOutFrm: TAllPayOutFrm
  Left = 298
  Top = 107
  BorderStyle = bsDialog
  Caption = #20840#37096#25903#20986
  ClientHeight = 553
  ClientWidth = 800
  Color = clBtnFace
  Constraints.MinWidth = 130
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
    Top = 36
    Width = 800
    Height = 517
    Align = alClient
    DataSource = DS_AllOut
    ShowSerialNo = False
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clInfoBk
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clBlack
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 2
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
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
    OnTitleClick = DBGridEh1TitleClick
    Columns = <
      item
        EditButtons = <>
        FieldName = #26085#26399
        Footers = <>
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = #28040#36153#21517#31216
        Footer.Value = #24635#28040#36153#39069':'
        Footer.ValueType = fvtStaticText
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
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = #37329#39069
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
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = #28040#36153#31867#22411
        Footers = <>
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = #27880#35299
        Footers = <>
        Title.TitleButton = True
        Width = 250
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 36
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 65
      Top = 9
      Width = 12
      Height = 13
      Caption = #24180
    end
    object Label2: TLabel
      Left = 123
      Top = 9
      Width = 12
      Height = 13
      Caption = #26376
    end
    object SpeedButton1: TSpeedButton
      Left = 144
      Top = 5
      Width = 60
      Height = 21
      Caption = #26597#35810
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 220
      Top = 5
      Width = 60
      Height = 21
      Caption = #20840#37096
      Flat = True
      OnClick = SpeedButton3Click
    end
    object YearEdit: TRzSpinEdit
      Left = 6
      Top = 6
      Width = 57
      Height = 21
      Max = 9999.000000000000000000
      Min = 1899.000000000000000000
      Value = 2008.000000000000000000
      TabOrder = 0
    end
    object MonthEdit: TRzSpinEdit
      Left = 82
      Top = 6
      Width = 37
      Height = 21
      Max = 12.000000000000000000
      Min = 1.000000000000000000
      Value = 1.000000000000000000
      TabOrder = 1
    end
  end
  object DS_AllOut: TDataSource
    AutoEdit = False
    DataSet = ExpensenDM.QuryAllOut
    Left = 272
    Top = 104
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
    Left = 280
    Top = 232
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Path = 'Software\Microsoft\Windows\Money\Eh'
    Left = 360
    Top = 232
  end
end
