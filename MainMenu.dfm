object Form2: TForm2
  Left = 544
  Top = 206
  Width = 450
  Height = 421
  Caption = 'Main Menu'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 96
    Top = 128
    Width = 242
    Height = 40
    Caption = '         SELAMAT DATANG'#13#10'DI APLIKASI PERPUSTAKAAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 128
    Top = 272
    Width = 178
    Height = 13
    Caption = 'copyright @Rika Apliana | 2023'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mm1: TMainMenu
    Left = 24
    Top = 24
    object Menu1: TMenuItem
      Caption = 'Menu'
      object D1: TMenuItem
        Caption = 'Inputan Anggota'
        OnClick = D1Click
      end
      object D2: TMenuItem
        Caption = 'Inputan  Petugas'
        OnClick = D2Click
      end
      object D3: TMenuItem
        Caption = 'Inputan Buku'
        OnClick = D3Click
      end
      object D4: TMenuItem
        Caption = 'Inputan Peminjaman'
      end
      object D5: TMenuItem
        Caption = 'Inputan Pengembalian'
      end
      object D6: TMenuItem
        Caption = 'Inputan Denda'
      end
    end
    object Close1: TMenuItem
      Caption = 'Close'
    end
  end
end
