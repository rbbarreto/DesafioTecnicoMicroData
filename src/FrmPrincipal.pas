unit FrmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus,
  Data.DB, Vcl.ExtCtrls;

type
  TfrmMaini = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMaini: TfrmMaini;

implementation

{$R *.dfm}

uses uDmDados, Views.frmlista, Views.APsitePostmon, Views.ConsumindoAPEmDelphi;

procedure TfrmMaini.Panel1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmListaCliente, frmListaCliente);
  try
    frmListaCliente.ShowModal;
  finally
    frmListaCliente.Free;
  end;
end;

procedure TfrmMaini.Panel2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmAPsitePostmon, frmAPsitePostmon);
  try
    frmAPsitePostmon.ShowModal;
  finally
    FreeAndNil(frmAPsitePostmon)
  end;
end;

procedure TfrmMaini.Panel3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmConsumirAPI, frmConsumirAPI);
  try
     frmConsumirAPI.ShowModal;
  finally
     FreeAndNil(frmConsumirAPI);
  end;
end;

end.
