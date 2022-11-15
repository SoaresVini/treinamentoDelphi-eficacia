unit AVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFVendedores = class(TForm)
    GVendedores: TDBGrid;
    ControleVendedor: TDBNavigator;
    BFechar: TButton;
    procedure BFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVendedores: TFVendedores;

implementation

{$R *.dfm}

uses udM;

procedure TFVendedores.BFecharClick(Sender: TObject);
begin

  close;

end;

end.
