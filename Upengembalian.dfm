object Form7: TForm7
  Left = 236
  Top = 135
  Width = 850
  Height = 529
  Caption = 'Inputan Pengembalian'
  Color = clPurple
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 32
    Top = 128
    Width = 119
    Height = 15
    Caption = 'TANGGAL KEMBALI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 168
    Width = 100
    Height = 15
    Caption = 'ID PEMINJAMAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 32
    Top = 208
    Width = 43
    Height = 15
    Caption = 'DENDA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 32
    Top = 248
    Width = 85
    Height = 15
    Caption = 'KETERANGAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 256
    Top = 32
    Width = 287
    Height = 38
    Caption = 'SISTEM INFORMASI PERPUSTAKAAN'#13#10'             INPUTAN PENGEMBALIAN'
    Color = clPurple
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object dtp1: TDateTimePicker
    Left = 176
    Top = 128
    Width = 177
    Height = 21
    Date = 45112.066510115740000000
    Time = 45112.066510115740000000
    TabOrder = 0
  end
  object Cb1: TComboBox
    Left = 176
    Top = 168
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'pilih---'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 360
    Width = 641
    Height = 137
    DataSource = ds1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 520
    Top = 112
    Width = 129
    Height = 31
    Caption = 'Baru'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 520
    Top = 160
    Width = 129
    Height = 31
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 520
    Top = 208
    Width = 129
    Height = 31
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 520
    Top = 256
    Width = 129
    Height = 31
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 520
    Top = 304
    Width = 129
    Height = 31
    Caption = 'Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btn5Click
  end
  object edt1: TEdit
    Left = 176
    Top = 208
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object edt2: TEdit
    Left = 176
    Top = 256
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
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
    Left = 696
    Top = 315
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pengembalian')
    Params = <>
    Left = 696
    Top = 355
    object intgrfldzqry1id_pengembalian: TIntegerField
      FieldName = 'id_pengembalian'
      Required = True
    end
    object dtfldzqry1tgl_kembali: TDateField
      FieldName = 'tgl_kembali'
    end
    object intgrfldzqry1id_peminjaman: TIntegerField
      FieldName = 'id_peminjaman'
    end
    object strngfldzqry1denda: TStringField
      FieldName = 'denda'
    end
    object strngfldzqry1keterangan: TStringField
      FieldName = 'keterangan'
    end
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 696
    Top = 387
  end
end
