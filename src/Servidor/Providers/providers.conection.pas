unit providers.conection;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection;

type
  TprovidersConection = class(TDataModule)
    ZConn: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create; reintroduce;
  end;

var
  providersConection: TprovidersConection;

implementation

{$R *.dfm}

{ TprovidersConection }

constructor TprovidersConection.Create;
begin
  inherited create(nil);
end;

end.
