unit AProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFProdutos = class(TForm)
    GProdutos: TDBGrid;
    ControleProduto: TDBNavigator;
    BSalvareFechar: TButton;
    procedure BSalvareFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;

implementation

{$R *.dfm}

uses udM;

procedure TFProdutos.BSalvareFecharClick(Sender: TObject);
begin
  close;
end;

end.
