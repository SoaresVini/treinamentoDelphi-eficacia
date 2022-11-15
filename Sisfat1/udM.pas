unit udM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    BaseDados: TFDConnection;
    Cliente: TFDQuery;
    Produto: TFDQuery;
    Vendedor: TFDQuery;
    NotaFiscalCorpo: TFDQuery;
    NotaFiscalItem: TFDQuery;
    DataNotaFiscalItem: TDataSource;
    DataNotaFiscalCorpo: TDataSource;
    DataVendedor: TDataSource;
    DataCliente: TDataSource;
    DataProduto: TDataSource;
    NotaFiscalItemNUMNOTA: TBCDField;
    NotaFiscalItemSEQITEM: TBCDField;
    NotaFiscalItemCODPRODUTO: TBCDField;
    NotaFiscalItemQTDPRODUTO: TBCDField;
    PrecoUnitario: TCurrencyField;
    TotalItem: TCurrencyField;
    procedure NotaFiscalItemCalcFields(DataSet: TDataSet);
    procedure NotaFiscalCorpoAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TDM.NotaFiscalCorpoAfterScroll(DataSet: TDataSet);
begin

  NotaFiscalItem.Close;
  NotaFiscalItem.Close;

  NotaFiscalItem.SQL.Text := 'Select * from NOTAFISCALITEM' + ' Where NUMNOTA = '+IntToStr(NotaFiscalCorpo.FieldByName('NUMNOTA').AsInteger);

  NotaFiscalItem.Open;

end;

procedure TDM.NotaFiscalItemCalcFields(DataSet: TDataSet);
begin

        TotalItem.AsFloat := NotaFiscalItemQTDPRODUTO.AsFloat * PrecoUnitario.AsFloat;

end;

end.
