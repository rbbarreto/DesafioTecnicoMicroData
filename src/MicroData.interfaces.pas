unit MicroData.interfaces;

interface

type
  iContato = interface;

  iCliente = interface
    ['{A82E117D-A557-4C6F-B2A0-7E707C0FA90C}']

    function id(value: Integer): iCliente;
    function nome(value: string): iCliente;
    function cep(value: string): iCliente;
    function logradouro(value: string): iCliente;
    function numero(value: string): iCliente;
    function complemento(value: string): iCliente;
    function cidade(value: string): iCliente;
    function ibge_cidade(value: string): iCliente;
    function siglas(value: string): iCliente;
    function ibge_uf(value: string): iCliente;
    function idContato: iContato;
  end;

  iContato = interface
    ['{91D1FF79-DC50-4ADA-9E8E-5BBCDF5626C6}']
    function id(value: Integer): iContato;
    function nome(value: string): iContato;
    function data_nasc(value: string): iContato;
    function idade(value: string): iContato;
    function telefone(value: string): iContato;
    function id_cliente(value: Integer): iContato;
    function &endContato: iCliente;
  end;

  iCrud = interface
    ['{E8231333-6D90-42BC-9136-968683324D79}']
  end;

implementation

end.
