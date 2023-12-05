unit Ubuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    dbgrd1: TDBGrid;
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
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    intgrfldzqry1id_buku: TIntegerField;
    strngfldzqry1kode_buku: TStringField;
    strngfldzqry1judul_buku: TStringField;
    strngfldzqry1penulis: TStringField;
    strngfldzqry1penerbit: TStringField;
    strngfldzqry1tahun_penerbit: TStringField;
    strngfldzqry1kategori: TStringField;
    edt6: TEdit;
    procedure bersih;
    procedure enable;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id:string;

implementation

{$R *.dfm}

{ TForm5 }

procedure TForm5.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
end;

procedure TForm5.enable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
end;

procedure TForm5.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;

edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
enable;
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') or (edt6.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (zqry1.Locate('kode_buku', edt1.Text,[])) and (zqry1.Locate('judul_buku', edt2.Text,[]))  then
  begin
    ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
    posisiawal;
  end else
  begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into buku values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from buku');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;

  end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') or (edt6.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (edt1.Text= zqry1.FieldList[1].AsString) and (edt2.Text = zqry1.FieldList[2].AsString)and (edt3.Text = zqry1.FieldList[3].AsString) and (edt4.Text = zqry1.FieldList[4].AsString) and (edt5.Text = zqry1.FieldList[5].AsString) and (edt6.Text = zqry1.FieldList[6].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update buku set kode_buku="'+edt1.Text+'",judul_buku="'+edt2.Text+'",penulis="'+edt3.Text+'",penerbit="'+edt4.Text+'",tahun_penerbit="'+edt5.Text+'",kategori="'+edt6.Text+'" where id_buku ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from buku');
  zqry1.Open;
   posisiawal;
  end;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from buku where id_buku="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from buku');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
enable;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
edt3.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString;
edt5.Text:= zqry1.Fields[5].AsString;
edt6.Text:= zqry1.Fields[6].AsString;
end;

end.
