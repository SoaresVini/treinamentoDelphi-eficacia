object FNotasFiscais: TFNotasFiscais
  Left = 0
  Top = 0
  Caption = 'Notas Fiscais'
  ClientHeight = 429
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 39
    Width = 44
    Height = 13
    Caption = 'Numero: '
  end
  object Label2: TLabel
    Left = 32
    Top = 82
    Width = 30
    Height = 13
    Caption = 'Data: '
  end
  object Label3: TLabel
    Left = 32
    Top = 124
    Width = 53
    Height = 13
    Caption = 'Vendedor: '
  end
  object Label4: TLabel
    Left = 32
    Top = 163
    Width = 40
    Height = 13
    Caption = 'Cliente: '
  end
  object GItensNota: TDBGrid
    Left = 8
    Top = 188
    Width = 610
    Height = 205
    DataSource = DM.DataNotaFiscalCorpo
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 82
    Top = 36
    Width = 121
    Height = 21
    DataField = 'NUMNOTA'
    DataSource = DM.DataNotaFiscalCorpo
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 84
    Top = 79
    Width = 121
    Height = 21
    DataField = 'DATEMISSAO'
    DataSource = DM.DataNotaFiscalCorpo
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 84
    Top = 161
    Width = 121
    Height = 21
    DataField = 'CODCLIENTE'
    DataSource = DM.DataNotaFiscalCorpo
    TabOrder = 3
  end
  object ControleNotaFiscal: TDBNavigator
    Left = 8
    Top = 5
    Width = 610
    Height = 25
    DataSource = DM.DataNotaFiscalCorpo
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 84
    Top = 121
    Width = 121
    Height = 21
    DataField = 'CODVENDEDOR'
    DataSource = DM.DataNotaFiscalCorpo
    TabOrder = 5
  end
  object BSalvareFechar: TButton
    Left = 8
    Top = 399
    Width = 610
    Height = 25
    Caption = 'Salvar Altera'#231#245'es e Fechar'
    TabOrder = 6
    OnClick = BSalvareFecharClick
  end
end
