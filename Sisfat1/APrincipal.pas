unit APrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFprincipal = class(TForm)
    MainMenu1: TMainMenu;
    MCadastrar: TMenuItem;
    MClientes: TMenuItem;
    MVendedores: TMenuItem;
    MProdutos: TMenuItem;
    N1: TMenuItem;
    MVendas: TMenuItem;
    N2: TMenuItem;
    MSair: TMenuItem;
    procedure MSairClick(Sender: TObject);
    procedure MClientesClick(Sender: TObject);
    procedure MVendedoresClick(Sender: TObject);
    procedure MProdutosClick(Sender: TObject);
    procedure MVendasClick(Sender: TObject);

  private
    procedure Abretabelas;

  public
    { Public declarations }
  end;

var
  Fprincipal: TFprincipal;

implementation

{$R *.dfm}

uses AClientes, ANotaFiscal, AProduto, AVendedores, udM;

procedure TFprincipal.Abretabelas;
begin

  DM.Cliente.Close;
  DM.Cliente.Open;

  DM.Vendedor.Close;
  DM.Vendedor.Open;

  DM.Produto.Close;
  DM.Produto.Open;

  DM.NotaFiscalCorpo.Close;
  DM.NotaFiscalCorpo.Open;

  DM.NotaFiscalItem.Close;
  DM.NotaFiscalItem.Open;

end;
{ *************************************************************************** }

procedure TFprincipal.MClientesClick(Sender: TObject);
begin
  Abretabelas;
  FClientes.ShowModal;

end;
{ *************************************************************************** }

procedure TFprincipal.MProdutosClick(Sender: TObject);
begin
  Abretabelas;
  FProdutos.ShowModal;
end;
{ *************************************************************************** }

procedure TFprincipal.MSairClick(Sender: TObject);
begin
  Close;
end;

{ *************************************************************************** }

procedure TFprincipal.MVendasClick(Sender: TObject);
begin
  Abretabelas;
  FNotasFiscais.ShowModal;

end;

{ *************************************************************************** }

procedure TFprincipal.MVendedoresClick(Sender: TObject);
begin
  Abretabelas;
  FVendedores.ShowModal;

end;

end.
