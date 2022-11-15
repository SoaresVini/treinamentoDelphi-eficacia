program SisFat;

uses
  Vcl.Forms,
  APrincipal in 'APrincipal.pas' {Fprincipal},
  udM in 'udM.pas' {DM: TDataModule},
  AVendedores in 'AVendedores.pas' {FVendedores},
  AClientes in 'AClientes.pas' {FClientes},
  AProduto in 'AProduto.pas' {FProdutos},
  ANotaFiscal in 'ANotaFiscal.pas' {FNotasFiscais};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFprincipal, Fprincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFVendedores, FVendedores);
  Application.CreateForm(TFClientes, FClientes);
  Application.CreateForm(TFProdutos, FProdutos);
  Application.CreateForm(TFNotasFiscais, FNotasFiscais);
  Application.Run;
end.
