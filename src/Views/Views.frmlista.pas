unit Views.frmlista;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Data.DB,
  Vcl.Grids,
  System.UITypes,
  Vcl.DBGrids;

type
  TfrmListaCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    edtBusca: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel7: TPanel;
    procedure Panel6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel5Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
  private
    { Private declarations }
    procedure searchClient(Value: string);
    procedure deletarContato(value: Integer);
  public
    procedure carregarListaCliente;
  end;

var
  frmListaCliente: TfrmListaCliente;

implementation

{$R *.dfm}

uses uDmDados, Views.frmCadCliente, ZDataset;

{ TfrmListaCliente }

procedure TfrmListaCliente.carregarListaCliente;
begin
  with  Dm do
   begin
      dsLista.DataSet.Open;
   end;
end;

procedure TfrmListaCliente.deletarContato(value: Integer);
var
  Zquery: TZQuery;
begin
  Zquery := TZQuery.Create(nil);
  try
    Zquery.Close;
    Zquery.Connection := Dm.ZConn;
    Zquery.SQL.Clear;
    Zquery.SQL.Add(' delete from contato  ');
    Zquery.SQL.Add('  where ID_CLIENTE = ' + QuotedStr(IntToStr(value)));
    Zquery.ExecSQL;
  finally
    FreeAndNil(Zquery);
  end;
end;

procedure TfrmListaCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm.dsLista.DataSet.Close;
end;

procedure TfrmListaCliente.Panel5Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  try
    frmCadCliente.Status :=  'I';
    frmCadCliente.ShowModal;
  finally
    frmCadCliente.Free;
  end;
end;

procedure TfrmListaCliente.Panel6Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmListaCliente.Panel7Click(Sender: TObject);
begin
  if Dm.dsLista.DataSet.IsEmpty then
   begin
     MessageDlg('Selecione o arquivo para ser excluído?', mtInformation, mbYesNo, 0);
     Exit;
   end;


   if MessageDlg('Deseja realmente excluir o registro selecionado ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

   deletarContato(Dm.dsLista.DataSet.FieldByName('ID').AsInteger);
   Dm.dsLista.DataSet.Delete;
   ShowMessage('Registro deleta do sucesso.');
end;

procedure TfrmListaCliente.Panel8Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  try
    frmCadCliente.Status := 'E';
    frmCadCliente.codigoCliente := Dm.dsLista.DataSet.FieldByName('id').AsInteger;
    frmCadCliente.ShowModal;
  finally
    frmCadCliente.Free;
  end;
end;

procedure TfrmListaCliente.searchClient(Value: string);
begin
 with Dm.zListaCliente do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' select *  ');
    SQL.Add('   from    ');
    SQL.Add(' cliente   ');
    if not (Value = EmptyStr) then
      begin
        SQL.Add('  where (id like ' + UpperCase(QuotedStr('%'+ Value + '%'))+')');
        SQL.Add('  or (upper(nome) like ' + UpperCase( QuotedStr('%' + Value + '%'))+')');
      end;
    Prepared := True;
    Open;
   end;
end;

procedure TfrmListaCliente.SpeedButton1Click(Sender: TObject);
begin
  searchClient(edtBusca.Text);
end;

end.
