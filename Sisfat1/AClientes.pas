unit AClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFClientes = class(TForm)
    GCliente: TDBGrid;
    ControleCliente: TDBNavigator;
    BFechar: TButton;
    procedure BFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

{$R *.dfm}

uses udM;

procedure TFClientes.BFecharClick(Sender: TObject);
begin
  close;
end;

end.
