object DM: TDM
  OldCreateOrder = False
  Height = 465
  Width = 464
  object BaseDados: TFDConnection
    Params.Strings = (
      'User_name=system'
      'Password=1298'
      'Database=SisCorp'
      'DriverID=Ora')
    Connected = True
    LoginPrompt = False
    Left = 312
    Top = 16
  end
  object Cliente: TFDQuery
    Connection = BaseDados
    SQL.Strings = (
      'Select * From CLIENTE')
    Left = 40
    Top = 16
  end
  object Produto: TFDQuery
    Connection = BaseDados
    SQL.Strings = (
      'Select * From PRODUTO')
    Left = 40
    Top = 112
  end
  object Vendedor: TFDQuery
    Connection = BaseDados
    SQL.Strings = (
      'Select * from VENDEDOR')
    Left = 40
    Top = 216
  end
  object NotaFiscalCorpo: TFDQuery
    AfterScroll = NotaFiscalCorpoAfterScroll
    Connection = BaseDados
    SQL.Strings = (
      'Select * from NOTAFISCALCORPO')
    Left = 40
    Top = 312
  end
  object NotaFiscalItem: TFDQuery
    OnCalcFields = NotaFiscalItemCalcFields
    Connection = BaseDados
    SQL.Strings = (
      'Select * from NOTAFISCALITEM')
    Left = 40
    Top = 400
    object NotaFiscalItemNUMNOTA: TBCDField
      FieldName = 'NUMNOTA'
      Origin = 'NUMNOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 10
      Size = 0
    end
    object NotaFiscalItemSEQITEM: TBCDField
      FieldName = 'SEQITEM'
      Origin = 'SEQITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 10
      Size = 0
    end
    object NotaFiscalItemCODPRODUTO: TBCDField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Required = True
      Precision = 10
      Size = 0
    end
    object NotaFiscalItemQTDPRODUTO: TBCDField
      FieldName = 'QTDPRODUTO'
      Origin = 'QTDPRODUTO'
      Precision = 15
      Size = 3
    end
    object PrecoUnitario: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'PrecoUnitario'
      LookupDataSet = Produto
      LookupKeyFields = 'CODPRODUTO'
      LookupResultField = 'VALVENDA'
      KeyFields = 'CODPRODUTO'
      Lookup = True
    end
    object TotalItem: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalItem'
      Calculated = True
    end
  end
  object DataNotaFiscalItem: TDataSource
    DataSet = NotaFiscalItem
    Left = 184
    Top = 400
  end
  object DataNotaFiscalCorpo: TDataSource
    DataSet = NotaFiscalCorpo
    Left = 184
    Top = 312
  end
  object DataVendedor: TDataSource
    DataSet = Vendedor
    Left = 184
    Top = 216
  end
  object DataCliente: TDataSource
    DataSet = Cliente
    Left = 184
    Top = 16
  end
  object DataProduto: TDataSource
    DataSet = Produto
    Left = 184
    Top = 112
  end
end
