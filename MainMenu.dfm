object Form2: TForm2
  Left = 192
  Top = 184
  Width = 928
  Height = 421
  Caption = 'Main Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 24
    Top = 24
    object Menu1: TMenuItem
      Caption = 'Menu'
      object D1: TMenuItem
        Caption = 'Inputan Anggota'
      end
      object InputanPetugas1: TMenuItem
        Caption = 'Inputan  Petugas'
      end
      object InputanPeminjaman1: TMenuItem
        Caption = 'Inputan Buku'
      end
      object InputanPenfembalian1: TMenuItem
        Caption = 'Inputan Peminjaman'
      end
      object InputanDenda1: TMenuItem
        Caption = 'Inputan Pengembalian'
      end
      object InputanDenda2: TMenuItem
        Caption = 'Inputan Denda'
      end
    end
    object L1: TMenuItem
      Caption = 'Laporan'
    end
    object Close1: TMenuItem
      Caption = 'Close'
    end
  end
end
