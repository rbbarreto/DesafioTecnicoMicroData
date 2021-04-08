inherited servicecliente: Tservicecliente
  OldCreateOrder = True
  Height = 103
  Width = 375
  inherited ZConn: TZConnection
    Left = 40
  end
  object QueryClientes: TZQuery
    Connection = ZConn
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 128
    Top = 32
    object QueryClientesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QueryClientesNOME: TWideStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object QueryClientesCEP: TWideStringField
      FieldName = 'CEP'
      Required = True
      Size = 8
    end
    object QueryClientesLOGRADOURO: TWideStringField
      FieldName = 'LOGRADOURO'
      Required = True
      Size = 60
    end
    object QueryClientesNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 10
    end
    object QueryClientesCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Required = True
      Size = 40
    end
    object QueryClientesCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 40
    end
    object QueryClientesIBGE_CIDADE: TWideStringField
      FieldName = 'IBGE_CIDADE'
      Required = True
      Size = 7
    end
    object QueryClientesSIGLAS: TWideStringField
      FieldName = 'SIGLAS'
      Required = True
      Size = 2
    end
    object QueryClientesIBGE_UF: TWideStringField
      FieldName = 'IBGE_UF'
      Required = True
      Size = 2
    end
  end
  object QueryCadastro: TZQuery
    Connection = ZConn
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 224
    Top = 32
    object QueryCadastroID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object QueryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object QueryCadastroCEP: TWideStringField
      FieldName = 'CEP'
      Required = True
      Size = 8
    end
    object QueryCadastroLOGRADOURO: TWideStringField
      FieldName = 'LOGRADOURO'
      Required = True
      Size = 60
    end
    object QueryCadastroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 10
    end
    object QueryCadastroCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Required = True
      Size = 40
    end
    object QueryCadastroCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 40
    end
    object QueryCadastroIBGE_CIDADE: TWideStringField
      FieldName = 'IBGE_CIDADE'
      Required = True
      Size = 7
    end
    object QueryCadastroSIGLAS: TWideStringField
      FieldName = 'SIGLAS'
      Required = True
      Size = 2
    end
    object QueryCadastroIBGE_UF: TWideStringField
      FieldName = 'IBGE_UF'
      Required = True
      Size = 2
    end
  end
end
