unit Views.ConsumindoAPEmDelphi;

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
  REST.Types,
  REST.Client,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  Vcl.StdCtrls,
  JSON, REST.Response.Adapter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmConsumirAPI = class(TForm)
    edtNome: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


const
  API = 'http://localhost:9000/cliente/';


var
  frmConsumirAPI: TfrmConsumirAPI;

implementation

{$R *.dfm}

procedure TfrmConsumirAPI.Button1Click(Sender: TObject);
var
  LDadosJSON : TJSONValue;
begin
  Screen.Cursor := crSQLWait;
  Memo1.Lines.Clear;

  RESTClient1.ResetToDefaults;
  RESTClient1.BaseURL := API;
  RESTRequest1.Method := rmGET;
  RESTRequest1.Resource := edtNome.Text;
  RESTRequest1.Execute;

  LDadosJSON := TJSONObject.ParseJSONValue(RESTResponse1.Content.Trim);
  try
    Memo1.Text := LDadosJSON.Format;
  finally
    LDadosJSON.Free;
  end;

  Screen.Cursor := crDefault;
end;

end.
