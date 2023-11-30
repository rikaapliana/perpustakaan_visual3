unit Anggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lb4: TLabel;
    lbl6: TLabel;
    lbl5: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    Cbjk: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    intgrfldzqry1id_siswa: TIntegerField;
    intgrfldzqry1nis: TIntegerField;
    intgrfldzqry1nisn: TIntegerField;
    strngfldzqry1nama_siswa: TStringField;
    intgrfldzqry1nik: TIntegerField;
    strngfldzqry1tempat_lahir: TStringField;
    dtfldzqry1tanggal_lahir: TDateField;
    strngfldzqry1jenis_kelamin: TStringField;
    strngfldzqry1alamat: TStringField;
    strngfldzqry1telp: TStringField;
    strngfldzqry1status: TStringField;
    strngfldzqry1tingkat_kelas: TStringField;
    strngfldzqry1jurusan: TStringField;
    strngfldzqry1wali_kelas: TStringField;
    ds1: TDataSource;
    dgdbgrd1: TDBGrid;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
