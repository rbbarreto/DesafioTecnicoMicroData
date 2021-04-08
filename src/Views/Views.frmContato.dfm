object frmContato: TfrmContato
  Left = 0
  Top = 0
  Caption = 'Contato'
  ClientHeight = 136
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 136
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 274
      Top = 31
      Width = 81
      Height = 13
      Caption = 'Data Nascimento'
    end
    object Label2: TLabel
      Left = 467
      Top = 31
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object edtNome: TLabeledEdit
      Left = 32
      Top = 48
      Width = 232
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 0
    end
    object edtData: TDateTimePicker
      Left = 272
      Top = 48
      Width = 169
      Height = 21
      Date = 44286.000000000000000000
      Time = 0.484711689816322200
      TabOrder = 1
    end
    object edtTelefone: TMaskEdit
      Left = 463
      Top = 50
      Width = 119
      Height = 21
      EditMask = '!\(99\)0000-0000;0;_'
      MaxLength = 13
      TabOrder = 2
      Text = ''
    end
    object Panel2: TPanel
      Left = 0
      Top = 95
      Width = 652
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 559
        Top = 3
        Width = 90
        Height = 35
        Align = alRight
        Caption = 'Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 463
        Top = 3
        Width = 90
        Height = 35
        Align = alRight
        Caption = 'Salvar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Panel4Click
      end
    end
  end
end
