unit uDmDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TDm = class(TDataModule)
    ZConn: TZConnection;
    zCliente: TZQuery;
    dsCliente: TDataSource;
    zContatos: TZQuery;
    dsContatos: TDataSource;
    zListaCliente: TZQuery;
    dsLista: TDataSource;
    zListaClienteID: TIntegerField;
    zListaClienteNOME: TWideStringField;
    zListaClienteCEP: TWideStringField;
    zListaClienteLOGRADOURO: TWideStringField;
    zListaClienteNUMERO: TWideStringField;
    zListaClienteCOMPLEMENTO: TWideStringField;
    zListaClienteCIDADE: TWideStringField;
    zListaClienteIBGE_CIDADE: TWideStringField;
    zListaClienteSIGLAS: TWideStringField;
    zListaClienteIBGE_UF: TWideStringField;
    zContatosID: TIntegerField;
    zContatosNOME: TWideStringField;
    zContatosDATA_NASC: TDateField;
    zContatosIDADE: TIntegerField;
    zContatosTELEFONE: TWideStringField;
    zContatosID_CLIENTE: TIntegerField;
    zClienteID: TIntegerField;
    zClienteNOME: TWideStringField;
    zClienteCEP: TWideStringField;
    zClienteLOGRADOURO: TWideStringField;
    zClienteNUMERO: TWideStringField;
    zClienteCOMPLEMENTO: TWideStringField;
    zClienteCIDADE: TWideStringField;
    zClienteIBGE_CIDADE: TWideStringField;
    zClienteSIGLAS: TWideStringField;
    zClienteIBGE_UF: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
