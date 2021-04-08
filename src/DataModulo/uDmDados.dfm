object Dm: TDm
  OldCreateOrder = False
  Height = 184
  Width = 629
  object ZConn: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    HostName = ''
    Port = 3050
    Database = 'C:\Projetos\DesafioTecnicoMicroData\src\DB\CRUD.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 48
    Top = 24
  end
  object zCliente: TZQuery
    Connection = ZConn
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 112
    Top = 32
    object zClienteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object zClienteNOME: TWideStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object zClienteCEP: TWideStringField
      DisplayLabel = 'CEP da Resid'#234'ncia'
      FieldName = 'CEP'
      Required = True
      Size = 8
    end
    object zClienteLOGRADOURO: TWideStringField
      DisplayLabel = 'logradouro'
      FieldName = 'LOGRADOURO'
      Required = True
      Size = 60
    end
    object zClienteNUMERO: TWideStringField
      DisplayLabel = 'N'#250'mero Resid'#234'ncia'
      FieldName = 'NUMERO'
      Required = True
      Size = 10
    end
    object zClienteCOMPLEMENTO: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Required = True
      Size = 40
    end
    object zClienteCIDADE: TWideStringField
      DisplayLabel = 'Nome da Cidade'
      FieldName = 'CIDADE'
      Required = True
      Size = 40
    end
    object zClienteIBGE_CIDADE: TWideStringField
      DisplayLabel = 'Codigo IBGE'
      FieldName = 'IBGE_CIDADE'
      Required = True
      Size = 7
    end
    object zClienteSIGLAS: TWideStringField
      DisplayLabel = 'Sigla do Estado'
      FieldName = 'SIGLAS'
      Required = True
      Size = 2
    end
    object zClienteIBGE_UF: TWideStringField
      DisplayLabel = 'C'#243'digo Estado IBGE'
      FieldName = 'IBGE_UF'
      Required = True
      Size = 2
    end
  end
  object dsCliente: TDataSource
    DataSet = zCliente
    Left = 176
    Top = 33
  end
  object zContatos: TZQuery
    Connection = ZConn
    SortedFields = 'nome'
    SQL.Strings = (
      'SELECT * FROM CONTATO WHERE ID_CLIENTE =:ID')
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    MasterFields = 'ID'
    MasterSource = dsCliente
    LinkedFields = 'ID_CLIENTE'
    IndexFieldNames = 'nome Asc'
    Left = 110
    Top = 98
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    object zContatosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object zContatosNOME: TWideStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object zContatosDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
    end
    object zContatosIDADE: TIntegerField
      FieldName = 'IDADE'
    end
    object zContatosTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object zContatosID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
  end
  object dsContatos: TDataSource
    DataSet = zContatos
    Left = 176
    Top = 98
  end
  object zListaCliente: TZQuery
    Connection = ZConn
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 368
    Top = 24
    object zListaClienteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object zListaClienteNOME: TWideStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object zListaClienteCEP: TWideStringField
      FieldName = 'CEP'
      Required = True
      Size = 8
    end
    object zListaClienteLOGRADOURO: TWideStringField
      FieldName = 'LOGRADOURO'
      Required = True
      Size = 60
    end
    object zListaClienteNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 10
    end
    object zListaClienteCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Required = True
      Size = 40
    end
    object zListaClienteCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 40
    end
    object zListaClienteIBGE_CIDADE: TWideStringField
      FieldName = 'IBGE_CIDADE'
      Required = True
      Size = 7
    end
    object zListaClienteSIGLAS: TWideStringField
      FieldName = 'SIGLAS'
      Required = True
      Size = 2
    end
    object zListaClienteIBGE_UF: TWideStringField
      FieldName = 'IBGE_UF'
      Required = True
      Size = 2
    end
  end
  object dsLista: TDataSource
    DataSet = zListaCliente
    Left = 416
    Top = 24
  end
end
