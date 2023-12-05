object Form6: TForm6
  Left = 368
  Top = 151
  Width = 928
  Height = 480
  VertScrollBar.Position = 55
  Caption = 'Inputan Peminjaman'
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 32
    Top = 73
    Width = 110
    Height = 15
    Caption = 'TANGGAL PINJAM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 113
    Width = 180
    Height = 15
    Caption = 'TENGGAT TANGGAL KEMBALI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 32
    Top = 153
    Width = 50
    Height = 15
    Caption = 'ID BUKU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 32
    Top = 193
    Width = 77
    Height = 15
    Caption = 'ID ANGGOTA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 32
    Top = 233
    Width = 73
    Height = 15
    Caption = 'ID PETUGAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 256
    Top = -23
    Width = 287
    Height = 38
    Caption = 'SISTEM INFORMASI PERPUSTAKAAN'#13#10'             INPUTAN PEMINJAMAN'
    Color = clOlive
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object dtp1: TDateTimePicker
    Left = 248
    Top = 65
    Width = 177
    Height = 21
    Date = 45112.066510115740000000
    Time = 45112.066510115740000000
    TabOrder = 0
  end
  object Cb1: TComboBox
    Left = 248
    Top = 153
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object Cb2: TComboBox
    Left = 248
    Top = 193
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object Cb3: TComboBox
    Left = 248
    Top = 233
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 3
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 304
    Width = 641
    Height = 137
    DataSource = ds1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 520
    Top = 57
    Width = 129
    Height = 31
    Caption = 'Baru'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object btn2: TButton
    Left = 520
    Top = 105
    Width = 129
    Height = 31
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object btn3: TButton
    Left = 520
    Top = 153
    Width = 129
    Height = 31
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object btn4: TButton
    Left = 520
    Top = 201
    Width = 129
    Height = 31
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object btn5: TButton
    Left = 520
    Top = 249
    Width = 129
    Height = 31
    Caption = 'Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object dtp2: TDateTimePicker
    Left = 248
    Top = 105
    Width = 177
    Height = 21
    Date = 45112.066510115740000000
    Time = 45112.066510115740000000
    TabOrder = 10
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
      'select * from peminjaman')
    Params = <>
    Left = 696
    Top = 355
    object intgrfldzqry1id_peminjaman: TIntegerField
      FieldName = 'id_peminjaman'
      Required = True
    end
    object dtfldzqry1tgl_pinjam: TDateField
      FieldName = 'tgl_pinjam'
    end
    object dtfldzqry1tgl_kembali: TDateField
      FieldName = 'tgl_kembali'
    end
    object intgrfldzqry1id_buku: TIntegerField
      FieldName = 'id_buku'
    end
    object intgrfldzqry1id_anggota: TIntegerField
      FieldName = 'id_anggota'
    end
    object intgrfldzqry1id_petugas: TIntegerField
      FieldName = 'id_petugas'
    end
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 696
    Top = 387
  end
end
