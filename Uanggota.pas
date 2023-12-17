unit Uanggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl5: TLabel;
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
    Cbjk: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl7: TLabel;
    intgrfldzqry1id_anggota: TIntegerField;
    strngfldzqry1kode_anggota: TStringField;
    strngfldzqry1nama: TStringField;
    strngfldzqry1jk: TStringField;
    strngfldzqry1kelas: TStringField;
    strngfldzqry1alamat: TStringField;
    strngfldzqry1no_telp: TStringField;
    btn6: TButton;
    frxanggota: TfrxReport;
    frxdbanggota: TfrxDBDataset;
    procedure bersih;
    procedure posisiawal;
    procedure enable;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id:string;

implementation

{$R *.dfm}

procedure TForm3.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm3.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;

edt1.Enabled:= False;
edt2.Enabled:= False;
Cbjk.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (zqry1.Locate('kode_anggota', edt1.Text,[])) and (zqry1.Locate('nama', edt2.Text,[]))  then
  begin
    ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
    posisiawal;
  end else
  begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into anggota values(null,"'+edt1.Text+'","'+edt2.Text+'","'+Cbjk.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from anggota');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;

  end;

end;

procedure TForm3.enable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
Cbjk.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
enable;
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
   if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (edt1.Text= zqry1.FieldList[1].AsString) and (edt2.Text = zqry1.FieldList[2].AsString)and(Cbjk.Text = zqry1.FieldList[3].AsString) and (edt3.Text = zqry1.FieldList[4].AsString) and (edt4.Text = zqry1.FieldList[5].AsString) and (edt5.Text = zqry1.FieldList[6].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update anggota set kode_anggota="'+edt1.Text+'",nama="'+edt2.Text+'",jk="'+Cbjk.Text+'",kelas="'+edt3.Text+'",alamat="'+edt4.Text+'",no_telp="'+edt5.Text+'" where id_anggota ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from anggota');
  zqry1.Open;
   posisiawal;
  end;

end;

procedure TForm3.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from anggota where id_anggota="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from anggota');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end

end;

procedure TForm3.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
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
Cbjk.Text:= zqry1.Fields[3].AsString;
edt3.Text:= zqry1.Fields[4].AsString;
edt4.Text:= zqry1.Fields[5].AsString;
edt5.Text:= zqry1.Fields[6].AsString;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
frxanggota.ShowReport(True);
end;

end.
