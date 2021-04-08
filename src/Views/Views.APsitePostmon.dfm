object frmAPsitePostmon: TfrmAPsitePostmon
  Left = 0
  Top = 0
  Caption = 'API site Postmon'
  ClientHeight = 461
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object edtCep: TEdit
    Left = 16
    Top = 24
    Width = 193
    Height = 28
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 16
    Top = 88
    Width = 513
    Height = 201
    TabOrder = 1
  end
  object Button1: TButton
    Left = 223
    Top = 23
    Width = 170
    Height = 31
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.postmon.com.br/v1/cep'
    ContentType = 'application/json'
    Params = <>
    Left = 104
    Top = 184
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 48
    Top = 288
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/html'
    Left = 184
    Top = 288
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 128
    Top = 376
  end
end
