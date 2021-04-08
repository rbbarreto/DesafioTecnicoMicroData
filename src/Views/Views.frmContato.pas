unit Views.frmContato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.ComCtrls;

type
  TfrmContato = class(TForm)
    Panel1: TPanel;
    edtNome: TLabeledEdit;
    edtData: TDateTimePicker;
    edtTelefone: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure Panel4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FcodContato: Integer;
    Fstatus: string;
    procedure SetcodContato(const Value: Integer);
    procedure Setstatus(const Value: string);
    { Private declarations }
    procedure carregarContato;
    procedure gravarContato;
    procedure updaterContato;

  public
    { Public declarations }
    property status: string read Fstatus write Setstatus;
    property codContato: Integer read FcodContato write SetcodContato;
  end;

var
  frmContato: TfrmContato;

implementation

uses
  ZDataset, uDmDados;

{$R *.dfm}

{ TfrmContato }


procedure TfrmContato.carregarContato;
var
  Zquery: TZQuery;
begin
  Zquery := TZQuery.Create(nil);
  try
    Zquery.Close;
    Zquery.Connection := Dm.ZConn;
    Zquery.SQL.Clear;
    Zquery.SQL.Add(' select nome, data_nasc, telefone from contato');
    Zquery.SQL.Add(' where id = ' + IntToStr(codContato));

    try
     Zquery.Open;

    if Zquery.RecordCount > 0 then
      begin
        edtNome.Text := Zquery.FieldByName('nome').Value;
        edtData.Date := Zquery.FieldByName('data_nasc').Value;
        edtTelefone.Text := Zquery.FieldByName('telefone').Value;
      end;

    except on E: Exception do
      raise Exception.Create('Verificar o que aconteceu ? ' +
                           sLineBreak +
                           E.Message);
    end;
  finally
    Zquery.Free;
  end;

end;

procedure TfrmContato.FormShow(Sender: TObject);
begin
  if status = 'E' then
     carregarContato;
end;

procedure TfrmContato.gravarContato;
var
  Zquery: TZQuery;
begin

  Zquery := TZQuery.Create(nil);
  try
    Zquery.Close;
    Zquery.Connection := Dm.ZConn;
    Zquery.SQL.Clear;
    Zquery.SQL.Add(' insert into contato ' +
                   '   (nome, data_nasc, telefone, id_cliente) '+
                   ' values ' +
                   ' (:nome, :data_nasc, :telefone, :id_cliente)');

    Zquery.Params.ParamByName('nome').Value := edtNome.Text;
    Zquery.Params.ParamByName('data_nasc').Value := FormatDateTime('yyyy/mm/dd',edtData.Date);
    Zquery.Params.ParamByName('telefone').Value := edtTelefone.Text;
    Zquery.Params.ParamByName('id_cliente').Value := codContato;
    try
      Zquery.ExecSQL;
      MessageDlg('Registro salvo com sucesso, o fomulario será fechado!!!', mtWarning, [mbOK], 0);
      Close;

    except on E: Exception do
      raise Exception.Create('Verificar o que aconteceu ? ' +
                           sLineBreak +
                           E.Message);
    end;
  finally
    Zquery.Free;
  end;

end;

procedure TfrmContato.Panel4Click(Sender: TObject);
begin
  if status = 'I' then
    gravarContato
   else
    updaterContato;
end;

procedure TfrmContato.SetcodContato(const Value: Integer);
begin
  FcodContato := Value;
end;

procedure TfrmContato.Setstatus(const Value: string);
begin
  Fstatus := Value;
end;

procedure TfrmContato.updaterContato;
var
  Zquery: TZQuery;
begin
  Zquery := TZQuery.Create(nil);
  try
    Zquery.Close;
    Zquery.Connection := Dm.ZConn;
    Zquery.SQL.Clear;
    Zquery.SQL.Add(' update contato ' +
                   ' set nome = :nome, ' +
                   '  data_nasc = :data_nasc, '+
                   '  telefone = :telefone ' +
                   '  where id = :id ');

    Zquery.Params.ParamByName('nome').Value := edtNome.Text;
    Zquery.Params.ParamByName('data_nasc').Value := FormatDateTime('yyyy/mm/dd',edtData.Date);
    Zquery.Params.ParamByName('telefone').Value := edtTelefone.Text;
    Zquery.Params.ParamByName('id').Value := codContato;

    try
      Zquery.ExecSQL;

      MessageDlg('Registro salvo com sucesso, o fomulario será fechado!!!', mtWarning, [mbOK], 0);
      Close;

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
