object MENU: TMENU
  Left = 0
  Top = 0
  Caption = 'MENU'
  ClientHeight = 229
  ClientWidth = 483
  Color = 12255019
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbNome: TLabel
    Left = 0
    Top = 8
    Width = 483
    Height = 137
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    Caption = 'EMISSAO DE RECIBO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
    Layout = tlCenter
  end
  object btnEntrar: TButton
    Left = 319
    Top = 196
    Width = 75
    Height = 25
    Caption = 'ENTRAR'
    TabOrder = 0
    OnClick = btnEntrarClick
  end
  object Button2: TButton
    Left = 400
    Top = 196
    Width = 75
    Height = 25
    Caption = 'SAIR'
    TabOrder = 1
  end
end
