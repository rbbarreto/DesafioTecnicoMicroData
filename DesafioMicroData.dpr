program DesafioMicroData;

uses
  Vcl.Forms,
  FrmPrincipal in 'src\FrmPrincipal.pas' {frmMaini},
  uDmDados in 'src\DataModulo\uDmDados.pas' {Dm: TDataModule},
  MicroData.interfaces in 'src\MicroData.interfaces.pas',
  Views.frmCadCliente in 'src\Views\Views.frmCadCliente.pas' {frmCadCliente},
  Views.frmlista in 'src\Views\Views.frmlista.pas' {frmListaCliente},
  Views.APsitePostmon in 'src\Views\Views.APsitePostmon.pas' {frmAPsitePostmon},
  Views.frmContato in 'src\Views\Views.frmContato.pas' {frmContato},
  Views.ConsumindoAPEmDelphi in 'src\Views\Views.ConsumindoAPEmDelphi.pas' {frmConsumirAPI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMaini, frmMaini);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.CreateForm(TfrmListaCliente, frmListaCliente);
  Application.CreateForm(TfrmAPsitePostmon, frmAPsitePostmon);
  Application.CreateForm(TfrmContato, frmContato);
  Application.CreateForm(TfrmConsumirAPI, frmConsumirAPI);
  Application.Run;
end.
