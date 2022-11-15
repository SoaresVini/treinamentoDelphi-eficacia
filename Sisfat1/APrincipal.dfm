object Fprincipal: TFprincipal
  Left = 0
  Top = 0
  Caption = 'Sistema faturamento'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object MCadastrar: TMenuItem
      Caption = '&Cadastrar'
      object MClientes: TMenuItem
        Caption = '&Clientes'
        OnClick = MClientesClick
      end
      object MVendedores: TMenuItem
        Caption = '&Vendedores'
        OnClick = MVendedoresClick
      end
      object MProdutos: TMenuItem
        Caption = '&Produtos'
        OnClick = MProdutosClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MVendas: TMenuItem
        Caption = '&Vendas'
        OnClick = MVendasClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object MSair: TMenuItem
        Caption = 'Sair'
        OnClick = MSairClick
      end
    end
  end
end
