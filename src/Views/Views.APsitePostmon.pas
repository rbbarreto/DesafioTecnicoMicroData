unit Views.APsitePostmon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  JSON;

type
  TfrmAPsitePostmon = class(TForm)
    edtCep: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

const
  API = 'https://api.postmon.com.br/v1/cep/';

var
  frmAPsitePostmon: TfrmAPsitePostmon;

implementation

{$R *.dfm}


procedure TfrmAPsitePostmon.Button1Click(Sender: TObject);
var
  Dados : TJSONObject;
begin
  Screen.Cursor := crSQLWait;
  Memo1.Lines.Clear;

  RESTClient1.BaseURL := API;
  RESTRequest1.Resource := edtCep.Text;
  RESTRequest1.Method := rmGET;
  RESTRequest1.Execute;

  Dados :=  RESTResponse1.JSONValue as TJSONObject;

  Memo1.Lines.Add(Dados.ToString);
  Screen.Cursor := crDefault;
end;

end.
