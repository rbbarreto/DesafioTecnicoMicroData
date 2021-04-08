object frmListaCliente: TfrmListaCliente
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmListaCliente'
  ClientHeight = 509
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 44
    Align = alTop
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 676
      Top = 9
      Width = 120
      Height = 26
      Align = alRight
      Caption = 'Novo Cadastro'
      Color = 13992502
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = Panel5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 805
    Height = 420
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 803
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 72
        Top = 5
        Width = 112
        Height = 21
        Caption = 'Pesquisa Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 423
        Top = 32
        Width = 114
        Height = 27
        Caption = 'Buscar'
        OnClick = SpeedButton1Click
      end
      object edtBusca: TEdit
        Left = 72
        Top = 31
        Width = 345
        Height = 29
        Hint = 'Pesquisar Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = 'Pesquisar itens'
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 73
      Width = 803
      Height = 346
      Align = alClient
      DataSource = Dm.dsLista
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGRADOURO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPLEMENTO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IBGE_CIDADE'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGLAS'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IBGE_UF'
          Width = 64
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 464
    Width = 805
    Height = 45
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 2
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 676
      Top = 9
      Width = 120
      Height = 27
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Panel6Click
    end
    object Panel8: TPanel
      AlignWithMargins = True
      Left = 424
      Top = 9
      Width = 120
      Height = 27
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Editar'
      Color = 5090800
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = Panel8Click
    end
    object Panel7: TPanel
      AlignWithMargins = True
      Left = 550
      Top = 9
      Width = 120
      Height = 27
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Excluir'
      Color = 5198809
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = Panel7Click
    end
  end
end
