object FClientes: TFClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 209
  ClientWidth = 647
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
  object GCliente: TDBGrid
    Left = 9
    Top = 39
    Width = 630
    Height = 129
    DataSource = DM.DataCliente
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ControleCliente: TDBNavigator
    Left = 8
    Top = 8
    Width = 630
    Height = 25
    DataSource = DM.DataCliente
    TabOrder = 1
  end
  object BFechar: TButton
    Left = 8
    Top = 174
    Width = 631
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BFecharClick
  end
end
