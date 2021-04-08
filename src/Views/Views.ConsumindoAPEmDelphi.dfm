object frmConsumirAPI: TfrmConsumirAPI
  Left = 0
  Top = 0
  Caption = 'Consumindo API no Delphi'
  ClientHeight = 419
  ClientWidth = 556
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 24
    Top = 37
    Width = 95
    Height = 21
    Caption = 'Nome Cliente'
  end
  object edtNome: TEdit
    Left = 24
    Top = 64
    Width = 265
    Height = 29
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 24
    Top = 99
    Width = 505
    Height = 290
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 312
    Top = 66
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:9000/cliente'
    Params = <>
    Left = 112
    Top = 136
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'nome'
        Options = [poAutoCreated]
        Value = 'rodrigo'
      end>
    Resource = '{nome}'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 112
    Top = 208
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 112
    Top = 272
  end
end
