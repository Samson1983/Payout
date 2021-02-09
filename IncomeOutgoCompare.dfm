object FormIncomeOutgoCompare: TFormIncomeOutgoCompare
  Left = 176
  Top = 130
  Width = 544
  Height = 375
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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 293
    Top = 0
    Width = 8
    Height = 348
    Cursor = crHSplit
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 293
    Height = 348
    Align = alLeft
    AutoFitColWidths = True
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGridEh2: TDBGridEh
    Left = 301
    Top = 0
    Width = 235
    Height = 348
    Align = alClient
    DataSource = DataSource2
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ExpensenDM.AllYearMonthIncome
    Left = 32
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = ExpensenDM.AllYearMonthOutgo
    Left = 296
    Top = 88
  end
end
