object frmMaini: TfrmMaini
  Left = 0
  Top = 0
  Caption = 'CRUD  Completo '
  ClientHeight = 368
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 56
    Top = 168
    Width = 241
    Height = 57
    Caption = 'CRUD'
    TabOrder = 0
    OnClick = Panel1Click
  end
  object Panel2: TPanel
    Left = 303
    Top = 168
    Width = 202
    Height = 57
    Caption = 'API site Postmon'
    TabOrder = 1
    OnClick = Panel2Click
  end
  object Panel3: TPanel
    Left = 519
    Top = 168
    Width = 202
    Height = 57
    Caption = 'API em Delphi'
    TabOrder = 2
    OnClick = Panel3Click
  end
end
