unit Views.frmCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Datasnap.DBClient;

type
  TfrmCadCliente = class(TForm)
    Panel1: TPanel;
    pnlTop: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    pnlCliente: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel3: TPanel;
    pnlContato: TPanel;
    DBGrid1: TDBGrid;
    Panel8: TPanel;
    DBNavigator1: TDBNavigator;
    Novo: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    cdsContato: TClientDataSet;
    dsContato: TDataSource;
    cdsContatoNome: TStringField;
    cdsContatoData_nasc: TDateField;
    cdsContatoidade: TIntegerField;
    cdsContatotelefone: TStringField;
    cdsContatoid_cliente: TIntegerField;
    edtCodigo: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtLogradouro: TLabeledEdit;
    edtNumero: TLabeledEdit;
    edtCep: TLabeledEdit;
    edtComplemento: TLabeledEdit;
    edtCidade: TLabeledEdit;
    edtIBGECidade: TLabeledEdit;
    edtEstado: TLabeledEdit;
    edtCodIBGE: TLabeledEdit;
    cdsContatoCODIGO: TIntegerField;
    procedure Panel3Click(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
  private
    FcodigoCliente: Integer;
    procedure SetcodigoCliente(const Value: Integer);
    function retornacodigo: Integer;
    procedure carregarDadosDoCliente;
    procedure excluirContatoDoCliente;

    { Private declarations }
  public
    Status : string;
    procedure Gravar;
    procedure Update;
    procedure AtualizarContato;
    property codigoCliente: Integer read FcodigoCliente write SetcodigoCliente;
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

uses
  ZDataset, uDmDados, Views.frmContato;

{$R *.dfm}

procedure TfrmCadCliente.AtualizarContato;
var
  zQuery : TZQuery;
  i : Integer;
begin
  if Status <> 'E' then
   exit;

  zQuery := TZQuery.Create(nil);
  try
    zQuery.Close;
    zQuery.Connection := Dm.ZConn;
    zQuery.SQL.Clear;
    zQuery.SQL.Add('select * from contato where id_cliente = ' + QuotedStr(IntToStr(codigoCliente)));
    zQuery.Open;

    zQuery.First;

    cdsContato.EmptyDataSet;
    
    cdsContato.DisableConstraints;
    for I := 0 to pred(zQuery.RecordCount) do
       begin
        cdsContato.Append;
        cdsContatoNome.AsString        := zQuery.FieldByName('Nome').AsString;
        cdsContatoData_nasc.AsDateTime := zQuery.FieldByName('Data_nasc').AsDateTime;
        cdsContatoidade.AsInteger      := zQuery.FieldByName('idade').AsInteger;
        cdsContatotelefone.AsString    := zQuery.FieldByName('telefone').AsString;
        cdsContatoCODIGO.AsInteger     := zQuery.FieldByName('ID').AsInteger;
        cdsContato.Post;

        zQuery.Next;
      end;
     cdsContato.EnableConstraints;

  finally
    FreeAndNil(zQuery);
  end;
end;

procedure TfrmCadCliente.carregarDadosDoCliente;
var
  Zquery: TZQuery;
begin 
   Zquery := TZQuery.Create(nil);
   try
      Zquery.Close;
      Zquery.Connection := Dm.ZConn;
      Zquery.SQL.Clear;
      Zquery.SQL.Add(' select id, nome, cep, logradouro, numero, complemento, ');
      Zquery.SQL.Add('       cidade, ibge_cidade, siglas, ibge_uf             ');
      Zquery.SQL.Add('  from cliente  ');
      Zquery.SQL.Add(' WHERE id = ' + QuotedStr(IntToStr(codigoCliente)));
      Zquery.Open;

      edtNome.Text := Zquery.FieldByName('nome').Value;
      edtCep.Text := Zquery.FieldByName('cep').Value;
      edtLogradouro.Text := Zquery.FieldByName('logradouro').Value;
      edtNumero.Text := Zquery.FieldByName('numero').Value;
      edtComplemento.Text := Zquery.FieldByName('complemento').Value;
      edtCidade.Text := Zquery.FieldByName('cidade').Value;
      edtIBGECidade.Text := Zquery.FieldByName('ibge_cidade').Value;
      edtEstado.Text := Zquery.FieldByName('siglas').Value;
      edtCodIBGE.Text := Zquery.FieldByName('ibge_uf').Value;
      edtCodigo.Text :=  Zquery.FieldByName('id').Value;
    finally
     FreeAndNil(Zquery);
    end;
end;

procedure TfrmCadCliente.excluirContatoDoCliente;
var
  Zquery: TZQuery;
begin
  Zquery := TZQuery.Create(nil);
  try
    Zquery.Close;
    Zquery.Connection := Dm.ZConn;
    Zquery.SQL.Clear;
    Zquery.SQL.Add(' delete from contato  '); 
    Zquery.SQL.Add('    where id = ' + QuotedStr(IntToStr(cdsContatoCODIGO.Value)));
    Zquery.ExecSQL;
  finally
    FreeAndNil(Zquery);                  
  end;
end;

procedure TfrmCadCliente.FormShow(Sender: TObject);
begin
  cdsContato.CreateDataSet;
  
  if Status = 'I' then
      Exit;
  
  if Status = 'E' then
     carregarDadosDoCliente;
   
   AtualizarContato;
end;

procedure TfrmCadCliente.Gravar;
var
  Zquery: TZQuery;
begin

  Zquery := TZQuery.Create(nil);
  try
    Zquery.Close;
    Zquery.Connection := Dm.ZConn;
    Zquery.SQL.Clear;
    Zquery.SQL.Add(' insert into cliente  ' +
                   ' (nome, cep, logradouro, numero, complemento, cidade, ibge_cidade, siglas, ibge_uf)' +
                   'values ' +
                   '(:nome, :cep, :logradouro, :numero, :complemento, :cidade, :ibge_cidade, :siglas, :ibge_uf)');

    Zquery.Params.ParamByName('nome').Value := edtNome.Text;
    Zquery.Params.ParamByName('cep').Value := edtCep.Text;
    Zquery.Params.ParamByName('logradouro').Value := edtLogradouro.Text;
    Zquery.Params.ParamByName('numero').Value := edtNumero.Text;
    Zquery.Params.ParamByName('complemento').Value := edtComplemento.Text;
    Zquery.Params.ParamByName('cidade').Value := edtCidade.Text;
    Zquery.Params.ParamByName('ibge_cidade').Value := edtIBGECidade.Text;
    Zquery.Params.ParamByName('siglas').Value := edtEstado.Text;
    Zquery.Params.ParamByName('ibge_uf').Value := edtCodIBGE.Text;

    try
      Zquery.ExecSQL;
      edtCodigo.Text := IntToStr( retornacodigo );

      Status := '';

    except on E: Exception do
      raise Exception.Create('Verificar o que aconteceu ? ' + 
                           sLineBreak + 
                           E.Message);
    end;
  finally
    Zquery.Free;
  end;
end;

procedure TfrmCadCliente.NovoClick(Sender: TObject);
begin
   if Status = 'I' then
   raise Exception.Create('Para adicionar contato finalize o cadastro do Cliente');

   Application.CreateForm(TfrmContato, frmContato);
   try
     frmContato.status := 'I';
     frmContato.codContato := StrToInt(edtCodigo.Text);
     frmContato.ShowModal;
     AtualizarContato;
   finally
     frmContato.Free;
   end;
end;

procedure TfrmCadCliente.Panel10Click(Sender: TObject);
begin
 if MessageDlg('Deseja excluir este contato: ',  mtConfirmation, [mbYes, mbNo], 0 ) = mrNo then
    exit;
    
   excluirContatoDoCliente;
   AtualizarContato
end;

procedure TfrmCadCliente.Panel3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCliente.Panel6Click(Sender: TObject);
begin
  if Status = 'I' then
    Gravar;

  if Status = 'E' then
    Update;

  pnlCliente.Enabled := false;  
end;

procedure TfrmCadCliente.Panel9Click(Sender: TObject);
begin
   if cdsContato.IsEmpty then
     raise Exception.Create('Para realizar alteração, selecione o registro');

   if Status = 'I' then
   raise Exception.Create('Para adicionar contato finalize o cadastro do Cliente');

   Application.CreateForm(TfrmContato, frmContato);
   try
     frmContato.status := 'E';
     frmContato.codContato := cdsContatoCODIGO.Value;
     frmContato.ShowModal;
     AtualizarContato;
   finally
     frmContato.Free;
   end;
end;

function TfrmCadCliente.retornacodigo: Integer;
var
  Query: TZQuery;
begin
  Query := TZQuery.Create(nil);
  try
    Query.Close;
    Query.Connection := Dm.ZConn;
    Query.SQL.Clear;
    Query.SQL.Add('select max(id) codigo from cliente');
    Query.Open;

    Result := Query.FieldByName('codigo').AsInteger;
  finally
    FreeAndNil(Query);
  end;
end;

procedure TfrmCadCliente.SetcodigoCliente(const Value: Integer);
begin
  FcodigoCliente := Value;
end;

procedure TfrmCadCliente.Update;
var
  Zquery: TZQuery;
begin

  Zquery := TZQuery.Create(nil);
  try
    Zquery.Close;
    Zquery.Connection := Dm.ZConn;
    Zquery.SQL.Clear;
    Zquery.SQL.Add('  update cliente    '+
                   '  set nome = :nome, '+ 
                   '      cep = :cep,   '+
                   '      logradouro = :logradouro, '+
                   '      numero = :numero,         '+
                   '      complemento = :complemento, '+
                   '      cidade = :cidade,          '+
                   '      ibge_cidade = :ibge_cidade, '+
                   '      siglas = :siglas,  '+
                   '      ibge_uf = :ibge_uf '+
                   '  where (id = :id)   ');

    Zquery.Params.ParamByName('nome').Value := edtNome.Text;
    Zquery.Params.ParamByName('cep').Value := edtCep.Text;
    Zquery.Params.ParamByName('logradouro').Value := edtLogradouro.Text;
    Zquery.Params.ParamByName('numero').Value := edtNumero.Text;
    Zquery.Params.ParamByName('complemento').Value := edtComplemento.Text;
    Zquery.Params.ParamByName('cidade').Value := edtCidade.Text;
    Zquery.Params.ParamByName('ibge_cidade').Value := edtIBGECidade.Text;
    Zquery.Params.ParamByName('siglas').Value := edtEstado.Text;
    Zquery.Params.ParamByName('ibge_uf').Value := edtCodIBGE.Text;
    Zquery.Params.ParamByName('id').Value := edtCodigo.Text;
    try
      Zquery.ExecSQL;

      Status := '';
       
    except on E: Exception do
      raise Exception.Create('Verificar o que aconteceu ? ' + 
                           sLineBreak + 
                           E.Message);
    end;
  finally
    Zquery.Free;
  end;    
end;

end.
