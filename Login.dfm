object Form1: TForm1
  Left = 386
  Top = 152
  Width = 305
  Height = 428
  VertScrollBar.Position = 8
  Caption = 'Form Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = -8
    Width = 273
    Height = 393
    Brush.Color = clNavy
  end
  object Shape2: TShape
    Left = 0
    Top = 80
    Width = 273
    Height = 65
  end
  object Shape3: TShape
    Left = 0
    Top = 168
    Width = 273
    Height = 65
  end
  object lbl1: TLabel
    Left = 24
    Top = 88
    Width = 99
    Height = 20
    Caption = 'USERNAME '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 176
    Width = 92
    Height = 20
    Caption = 'PASSWORD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 242
    Height = 40
    Caption = '       SELAMAT DATANG '#13#10'DI APLIKASI PERPUSTAKAAN'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object edt1: TEdit
    Left = 24
    Top = 112
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 32
    Top = 200
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object btnb1: TButton
    Left = 192
    Top = 256
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = btnb1Click
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 200
    Top = 304
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'perpustakaan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\rikaa\OneDrive\Documents\Academic Rika\5. Visual 3\perp' +
      'ustakaan_visual3\libmysql.dll'
    Left = 168
    Top = 304
  end
end
