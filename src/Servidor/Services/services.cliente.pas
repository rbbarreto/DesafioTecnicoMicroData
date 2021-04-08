unit services.cliente;

interface

uses
  System.SysUtils, System.Classes, providers.conection, ZAbstractConnection,
  ZConnection, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tservicecliente = class(TprovidersConection)
    QueryClientes: TZQuery;
    QueryClientesID: TIntegerField;
    QueryClientesNOME: TWideStringField;
    QueryClientesCEP: TWideStringField;
    QueryClientesLOGRADOURO: TWideStringField;
    QueryClientesNUMERO: TWideStringField;
    QueryClientesCOMPLEMENTO: TWideStringField;
    QueryClientesCIDADE: TWideStringField;
    QueryClientesIBGE_CIDADE: TWideStringField;
    QueryClientesSIGLAS: TWideStringField;
    QueryClientesIBGE_UF: TWideStringField;
    QueryCadastro: TZQuery;
    QueryCadastroID: TIntegerField;
    QueryCadastroNOME: TWideStringField;
    QueryCadastroCEP: TWideStringField;
    QueryCadastroLOGRADOURO: TWideStringField;
    QueryCadastroNUMERO: TWideStringField;
    QueryCadastroCOMPLEMENTO: TWideStringField;
    QueryCadastroCIDADE: TWideStringField;
    QueryCadastroIBGE_CIDADE: TWideStringField;
    QueryCadastroSIGLAS: TWideStringField;
    QueryCadastroIBGE_UF: TWideStringField;
  public
    function ListAll: TZQuery;
    function GetNome(const aNome: string): TZQuery;
  end;

implementation

{$R *.dfm}

{ Tservicecliente }

function Tservicecliente.GetNome(const aNome: string): TZQuery;
begin
  Result := QueryCadastro;
  QueryCadastro.SQL.Add('where upper(nome) like ' + QuotedStr(UpperCase('%' + aNome + '%')));
  QueryCadastro.Open;
end;

function Tservicecliente.ListAll: TZQuery;
begin
   QueryClientes.Open;
   Result := QueryClientes;
end;

end.
