object F_PleaseWait: TF_PleaseWait
  Left = 349
  Top = 295
  BorderStyle = bsNone
  Caption = 'F_PleaseWait'
  ClientHeight = 31
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 295
    Height = 31
    Align = alClient
    Caption = #27491#22312#22788#29702#25968#25454','#35831#31245#21518'...'
    TabOrder = 0
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 24
      Width = 293
      Height = 6
      Align = alBottom
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 208
  end
end
