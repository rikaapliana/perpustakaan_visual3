unit Upeminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, ComCtrls,
  frxClass, frxDBSet;

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
    btn6: TButton;
    frxpeminjaman: TfrxReport;
    frxdbpeminjaman: TfrxDBDataset;
    procedure enable;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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
  Form6: TForm6;
  id:string;

implementation

{$R *.dfm}

{ TForm6 }

procedure TForm6.enable;
begin
Cb1.Enabled:= True;
Cb2.Enabled:= True;
Cb3.Enabled:= True;
end;

procedure TForm6.posisiawal;
begin
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;

Cb1.Enabled:= False;
Cb2.Enabled:= False;
Cb3.Enabled:= False;

end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
enable;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
  if (zqry1.Locate('id_buku', Cb1.Text,[])) and (zqry1.Locate('id_anggota', Cb2.Text,[]))  then
  begin
    ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
    posisiawal;
  end else
  begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into peminjaman values(null,"'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'", "'+FormatDateTime('yyyy-mm-dd', dtp2.Date)+'","'+Cb1.Text+'","'+Cb2.Text+'","'+Cb3.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from peminjaman');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;

  end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin

  if (Cb1.Text= zqry1.FieldList[3].AsString) and (Cb2.Text = zqry1.FieldList[4].AsString)and (Cb3.Text = zqry1.FieldList[5].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update peminjaman set id_buku="'+Cb1.Text+'",id_anggota="'+Cb2.Text+'",id_petugas="'+Cb3.Text+'" where id_peminjaman ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from peminjaman');
  zqry1.Open;
   posisiawal;
  end;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from peminjaman where id_peminjaman="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from peminjaman');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
enable;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:= zqry1.Fields[0].AsString;
dtp1.Date:= StrToDate(zqry1.Fields[1].AsString);
dtp2.Date:= StrToDate(zqry1.Fields[2].AsString);
Cb1.Text:= zqry1.Fields[3].AsString;
Cb2.Text:= zqry1.Fields[4].AsString;
Cb3.Text:= zqry1.Fields[5].AsString;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
frxpeminjaman.ShowReport(True);
end;

end.
