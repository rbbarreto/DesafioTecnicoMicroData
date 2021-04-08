unit Controller.Cliente;

interface


procedure Registry;

implementation

uses
  Horse,
  System.JSON,
  DataSet.Serialize,
  services.cliente,
  Data.db;

procedure ListaCliente(Req: THorseRequest; Resp: THorseResponse; Next:TProc);
var
 LContent : TJSONArray;
 LService : Tservicecliente;
begin
 LService := Tservicecliente.Create();
 try
   LContent:= LService.ListAll.ToJSONArray();
   Resp.Send<TJSONArray>(LContent);
 finally
   LService.Free;
 end;
end;

procedure LikeNome(Req: THorseRequest; Resp: THorseResponse; Next:TProc);
var
 LContent : string;
 LService : Tservicecliente;
 LContentObj : TJSONObject;

begin
 LService := Tservicecliente.Create();
 try
   LContent := Req.Params['nome'];
   if LService.GetNome(LContent).IsEmpty then
    raise EHorseException
              .Create(THTTPStatus.NotFound, 'Cliente não cadastrado!');

   LContentObj:= LService
                    .QueryCadastro
                    .ToJSONObject();

   Resp.Send<TJSONObject>(LContentObj);
 finally
   LService.Free;
 end;

end;


procedure Registry;
begin
   THorse.Get('/cliente', ListaCliente);
   THorse.Get('/cliente/:nome', LikeNome);
end;


end.
