object FVendedores: TFVendedores
  Left = 0
  Top = 0
  Caption = 'Vendedores'
  ClientHeight = 212
  ClientWidth = 636
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
  object GVendedores: TDBGrid
    Left = 8
    Top = 39
    Width = 619
    Height = 130
    DataSource = DM.DataVendedor
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ControleVendedor: TDBNavigator
    Left = 8
    Top = 8
    Width = 620
    Height = 25
    DataSource = DM.DataVendedor
    TabOrder = 1
  end
  object BFechar: TButton
    Left = 8
    Top = 175
    Width = 619
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BFecharClick
  end
end
