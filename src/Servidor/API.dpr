program API;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  providers.conection in 'Providers\providers.conection.pas' {providersConection: TDataModule},
  services.cliente in 'Services\services.cliente.pas' {servicecliente: TDataModule},
  Controller.Cliente in 'Controller\Controller.Cliente.pas';

begin
   THorse.Use(Jhonson);

   Controller.Cliente.Registry;

  THorse.Listen(9000);
end.
