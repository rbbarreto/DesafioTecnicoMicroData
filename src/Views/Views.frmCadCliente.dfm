object frmCadCliente: TfrmCadCliente
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro  Cliente'
  ClientHeight = 553
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 553
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 792
      Height = 49
      Align = alTop
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 0
      object Label1: TLabel
        Left = 217
        Top = 6
        Width = 196
        Height = 37
        Align = alLeft
        Alignment = taCenter
        Caption = 'Cadastro de Cliente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 30
      end
      object Panel4: TPanel
        Left = 6
        Top = 6
        Width = 211
        Height = 37
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
    end
    object pnlCliente: TPanel
      Left = 0
      Top = 49
      Width = 792
      Height = 152
      Align = alTop
      TabOrder = 1
      object edtCodigo: TLabeledEdit
        Left = 17
        Top = 32
        Width = 91
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        Enabled = False
        TabOrder = 0
      end
      object edtNome: TLabeledEdit
        Left = 114
        Top = 32
        Width = 651
        Height = 21
        EditLabel.Width = 81
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome do Cliente '
        TabOrder = 1
      end
      object edtLogradouro: TLabeledEdit
        Left = 17
        Top = 72
        Width = 748
        Height = 21
        EditLabel.Width = 55
        EditLabel.Height = 13
        EditLabel.Caption = 'Logradouro'
        TabOrder = 2
      end
      object edtNumero: TLabeledEdit
        Left = 17
        Top = 112
        Width = 91
        Height = 21
        EditLabel.Width = 91
        EditLabel.Height = 13
        EditLabel.Caption = 'Numero Resid'#234'ncia'
        TabOrder = 3
      end
      object edtCep: TLabeledEdit
        Left = 114
        Top = 112
        Width = 103
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = 'CEP'
        TabOrder = 4
      end
      object edtComplemento: TLabeledEdit
        Left = 223
        Top = 112
        Width = 218
        Height = 21
        EditLabel.Width = 65
        EditLabel.Height = 13
        EditLabel.Caption = 'Complemento'
        TabOrder = 5
      end
      object edtCidade: TLabeledEdit
        Left = 447
        Top = 112
        Width = 78
        Height = 21
        DoubleBuffered = False
        EditLabel.Width = 78
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome da Cidade'
        ParentDoubleBuffered = False
        TabOrder = 6
      end
      object edtIBGECidade: TLabeledEdit
        Left = 531
        Top = 112
        Width = 95
        Height = 21
        EditLabel.Width = 59
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo IBGE'
        TabOrder = 7
      end
      object edtEstado: TLabeledEdit
        Left = 632
        Top = 112
        Width = 33
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Estado'
        TabOrder = 8
      end
      object edtCodIBGE: TLabeledEdit
        Left = 696
        Top = 112
        Width = 30
        Height = 21
        EditLabel.Width = 81
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome do Cliente '
        TabOrder = 9
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 509
      Width = 792
      Height = 44
      Align = alBottom
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 2
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 507
        Top = 9
        Width = 90
        Height = 26
        Align = alRight
        BevelOuter = bvNone
        Caption = 'Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 603
        Top = 9
        Width = 90
        Height = 26
        Align = alRight
        BevelOuter = bvNone
        Caption = 'Salvar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Panel6Click
      end
      object Panel3: TPanel
        Left = 696
        Top = 6
        Width = 90
        Height = 32
        Align = alRight
        BevelOuter = bvNone
        Caption = 'FECHAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = Panel3Click
      end
    end
    object pnlContato: TPanel
      Left = 0
      Top = 201
      Width = 792
      Height = 308
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 792
        Height = 264
        Align = alClient
        DataSource = dsContato
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_nasc'
            Title.Caption = 'Data Nasc.'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idade'
            Title.Caption = 'Idade'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Title.Caption = 'Telefone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_cliente'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = False
          end>
      end
      object Panel8: TPanel
        Left = 0
        Top = 264
        Width = 792
        Height = 44
        Align = alBottom
        TabOrder = 1
        object DBNavigator1: TDBNavigator
          Left = 195
          Top = 6
          Width = 168
          Height = 24
          DataSource = dsContato
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 0
        end
        object Novo: TPanel
          Left = 376
          Top = 6
          Width = 89
          Height = 25
          Caption = 'Novo'
          TabOrder = 1
          OnClick = NovoClick
        end
        object Panel9: TPanel
          Left = 470
          Top = 6
          Width = 89
          Height = 25
          Caption = 'Editar'
          TabOrder = 2
          OnClick = Panel9Click
        end
        object Panel10: TPanel
          Left = 567
          Top = 6
          Width = 89
          Height = 25
          Caption = 'Excluir'
          TabOrder = 3
          OnClick = Panel10Click
        end
      end
    end
  end
  object cdsContato: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 736
    Top = 307
    object cdsContatoNome: TStringField
      DisplayWidth = 50
      FieldName = 'Nome'
      Size = 50
    end
    object cdsContatoData_nasc: TDateField
      DisplayWidth = 12
      FieldName = 'Data_nasc'
    end
    object cdsContatoidade: TIntegerField
      DisplayWidth = 10
      FieldName = 'idade'
    end
    object cdsContatotelefone: TStringField
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 15
    end
    object cdsContatoid_cliente: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_cliente'
    end
    object cdsContatoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
  object dsContato: TDataSource
    DataSet = cdsContato
    Left = 736
    Top = 355
  end
end
