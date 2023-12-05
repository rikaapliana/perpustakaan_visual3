unit Upeminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TForm6 = class(TForm)
    dtp1: TDateTimePicker;
    Cb1: TComboBox;
    Cb2: TComboBox;
    Cb3: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl7: TLabel;
    dtp2: TDateTimePicker;
    intgrfldzqry1id_peminjaman: TIntegerField;
    dtfldzqry1tgl_pinjam: TDateField;
    dtfldzqry1tgl_kembali: TDateField;
    intgrfldzqry1id_buku: TIntegerField;
    intgrfldzqry1id_anggota: TIntegerField;
    intgrfldzqry1id_petugas: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

end.
