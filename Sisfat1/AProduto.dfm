object FProdutos: TFProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 208
  ClientWidth = 635
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
  object GProdutos: TDBGrid
    Left = 8
    Top = 39
    Width = 610
    Height = 130
    DataSource = DM.DataProduto
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ControleProduto: TDBNavigator
    Left = 8
    Top = 8
    Width = 610
    Height = 25
    DataSource = DM.DataProduto
    TabOrder = 1
  end
  object BSalvareFechar: TButton
    Left = 8
    Top = 175
    Width = 610
    Height = 25
    Caption = 'Salvar Altera'#231#245'es e Fechar'
    TabOrder = 2
    OnClick = BSalvareFecharClick
  end
end
