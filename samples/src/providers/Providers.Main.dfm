object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Wait - VCL'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 145
    Height = 25
    Caption = 'Wait with progress bar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 159
    Top = 8
    Width = 145
    Height = 25
    Caption = 'Wait without progress bar'
    TabOrder = 1
    OnClick = Button2Click
  end
end
