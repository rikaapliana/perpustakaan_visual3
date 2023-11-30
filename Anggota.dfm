object Form3: TForm3
  Left = 388
  Top = 376
  Width = 800
  Height = 480
  Caption = 'Inputan Angggota'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 144
    Width = 99
    Height = 15
    Caption = 'KODE ANGGOTA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 184
    Width = 38
    Height = 15
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 224
    Width = 95
    Height = 15
    Caption = 'JENIS KELAMIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb4: TLabel
    Left = 40
    Top = 264
    Width = 41
    Height = 15
    Caption = 'KELAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 40
    Top = 344
    Width = 75
    Height = 15
    Caption = 'NO. TELPON'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 304
    Width = 53
    Height = 15
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 240
    Top = 64
    Width = 299
    Height = 40
    Caption = 'SISTEM INFORMASI PERPUSTAKAAN'#13#10'               INPUTAN ANGGOTA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 504
    Top = 144
    Width = 137
    Height = 33
    Caption = 'Baru'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btn2: TButton
    Left = 504
    Top = 192
    Width = 137
    Height = 33
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btn3: TButton
    Left = 504
    Top = 240
    Width = 137
    Height = 33
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btn4: TButton
    Left = 504
    Top = 288
    Width = 137
    Height = 33
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object btn5: TButton
    Left = 504
    Top = 336
    Width = 137
    Height = 33
    Caption = 'Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edt1: TEdit
    Left = 192
    Top = 144
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object edt2: TEdit
    Left = 192
    Top = 184
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object edt3: TEdit
    Left = 192
    Top = 256
    Width = 233
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edt4: TEdit
    Left = 192
    Top = 296
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
  object edt5: TEdit
    Left = 192
    Top = 336
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
  object Cbjk: TComboBox
    Left = 192
    Top = 224
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Text = 'pilih --'
    Items.Strings = (
      'L'
      'P')
  end
  object dgdbgrd1: TDBGrid
    Left = 48
    Top = 392
    Width = 633
    Height = 225
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Port = 3306
    Database = 'db_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\LENOVO 110-14IBR\Documents\Rika Apliana_2110010300_UAS_' +
      'Visual2\libmysql.dll'
    Left = 192
    Top = 539
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from tbl_siswa')
    Params = <>
    Left = 112
    Top = 539
    object intgrfldzqry1id_siswa: TIntegerField
      FieldName = 'id_siswa'
      Required = True
    end
    object intgrfldzqry1nis: TIntegerField
      FieldName = 'nis'
    end
    object intgrfldzqry1nisn: TIntegerField
      FieldName = 'nisn'
    end
    object strngfldzqry1nama_siswa: TStringField
      FieldName = 'nama_siswa'
      Size = 25
    end
    object intgrfldzqry1nik: TIntegerField
      FieldName = 'nik'
    end
    object strngfldzqry1tempat_lahir: TStringField
      FieldName = 'tempat_lahir'
      Size = 25
    end
    object dtfldzqry1tanggal_lahir: TDateField
      FieldName = 'tanggal_lahir'
    end
    object strngfldzqry1jenis_kelamin: TStringField
      FieldName = 'jenis_kelamin'
      Size = 1
    end
    object strngfldzqry1alamat: TStringField
      FieldName = 'alamat'
      Size = 50
    end
    object strngfldzqry1telp: TStringField
      FieldName = 'telp'
      Size = 13
    end
    object strngfldzqry1status: TStringField
      FieldName = 'status'
      Size = 8
    end
    object strngfldzqry1tingkat_kelas: TStringField
      FieldName = 'tingkat_kelas'
      Size = 10
    end
    object strngfldzqry1jurusan: TStringField
      FieldName = 'jurusan'
      Size = 25
    end
    object strngfldzqry1wali_kelas: TStringField
      FieldName = 'wali_kelas'
      Size = 25
    end
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 152
    Top = 539
  end
end
