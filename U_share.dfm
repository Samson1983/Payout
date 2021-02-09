object F_share: TF_share
  Left = 349
  Top = 192
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #19975#33021#26597#35810#22120
  ClientHeight = 301
  ClientWidth = 356
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 278
    Width = 356
    Height = 23
    Align = alBottom
    Alignment = taLeftJustify
    BorderStyle = bsSingle
    Color = clYellow
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 356
    Height = 278
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 49
      Width = 354
      Height = 228
      Align = alClient
      Caption = #26597#35810#26465#20214
      TabOrder = 0
      object ListBox1: TListBox
        Left = 2
        Top = 15
        Width = 153
        Height = 211
        Align = alLeft
        Color = clCream
        ImeName = #26368#24378#20116#31508#36755#20837#27861
        ItemHeight = 13
        TabOrder = 0
        OnClick = ListBox1Click
        OnKeyDown = ListBox1KeyDown
        OnMouseUp = ListBox1MouseUp
      end
      object NB: TNotebook
        Left = 155
        Top = 15
        Width = 197
        Height = 211
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        PageIndex = 4
        ParentFont = False
        TabOrder = 1
        object TPage
          Left = 0
          Top = 0
          Caption = 'memo1'
          object memo1: TMemo
            Left = 24
            Top = 0
            Width = 153
            Height = 185
            TabOrder = 0
          end
        end
        object TPage
          Left = 0
          Top = 0
          HelpContext = 1
          Caption = 'DateTime'
          object Label5: TLabel
            Left = 8
            Top = 109
            Width = 24
            Height = 17
            AutoSize = False
            Caption = #20174#65306
          end
          object Label6: TLabel
            Left = 8
            Top = 148
            Width = 32
            Height = 25
            AutoSize = False
            Caption = #33267#65306
          end
          object DateTimePicker1: TDateTimePicker
            Left = 32
            Top = 104
            Width = 161
            Height = 24
            Date = 39431.014992939820000000
            Time = 39431.014992939820000000
            TabOrder = 0
          end
          object DateTimePicker2: TDateTimePicker
            Left = 32
            Top = 144
            Width = 161
            Height = 24
            Date = 39431.015043032410000000
            Time = 39431.015043032410000000
            TabOrder = 1
          end
        end
        object TPage
          Left = 0
          Top = 0
          HelpContext = 2
          Caption = 'c'
          object Label7: TLabel
            Left = 8
            Top = 120
            Width = 161
            Height = 21
            AutoSize = False
            Caption = #35831#36755#20837#27169#31946#26597#35810#20018#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit7: TEdit
            Left = 8
            Top = 152
            Width = 172
            Height = 24
            TabOrder = 0
          end
        end
        object TPage
          Left = 0
          Top = 0
          HelpContext = 3
          Caption = 'comboBox'
          object ComboBox2: TComboBox
            Left = 8
            Top = 8
            Width = 177
            Height = 24
            Color = clBtnFace
            ItemHeight = 16
            TabOrder = 0
            Text = 'ComboBox2'
          end
        end
        object TPage
          Left = 0
          Top = 0
          HelpContext = 4
          Caption = 'Money'
          object Label1: TLabel
            Left = 24
            Top = 120
            Width = 33
            Height = 25
            AutoSize = False
            Caption = #20174
          end
          object Label3: TLabel
            Left = 24
            Top = 160
            Width = 25
            Height = 16
            AutoSize = False
            Caption = #33267
          end
          object Edit1: TEdit
            Left = 53
            Top = 116
            Width = 121
            Height = 24
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 56
            Top = 152
            Width = 121
            Height = 24
            TabOrder = 1
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 354
      Height = 48
      Align = alTop
      BorderStyle = bsSingle
      TabOrder = 1
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 153
        Height = 33
        AutoSize = False
        Caption = #19975#33021#26597#35810#22120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn2: TBitBtn
        Left = 263
        Top = 8
        Width = 75
        Height = 25
        Caption = #21462#28040
        TabOrder = 0
        OnClick = BitBtn2Click
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0000000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0
          C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C0000000
          FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C0000000FFFF0000FFFFC0C0C0000000FFFF0000
          FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C0000000FFFF0000FFFF0000FFFFC0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000FFFF8328F7FFC0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C0000000FFFF0000FFFF0000FFFFC0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C0000000FFFF0000FFFFC0C0C0000000FFFF0000
          FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C0000000
          FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C0000000
          FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C0000000FFFF0000FFFFC0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      end
      object BitBtn1: TBitBtn
        Left = 179
        Top = 8
        Width = 75
        Height = 25
        Caption = #30830#23450
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000FF0000FFC0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000FF0000FFFF0000FFFF0000FFC0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FF0000FFFF0000FFFF0000FFC0C0C000FF0000FFFF0000FFC0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000FF0000FFFF0000FFC0C0C000C0C0C000C0C0C000C0C0C000FF0000FFFF00
          00FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FF00
          00FFFF0000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FF00
          00FFFF0000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000FF0000FFFF0000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FF0000FFFF0000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000FF0000FFFF0000FFC0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000FF0000FFFF0000FFC0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000FF0000FFFF0000FFC0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FF0000FFC0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      end
    end
  end
end
