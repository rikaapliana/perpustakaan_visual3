unit Upengembalian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, ComCtrls, frxClass,
  frxDBSet;

type
  TForm7 = class(TForm)
    dtp1: TDateTimePicker;
    Cb1: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
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
    edt1: TEdit;
    edt2: TEdit;
    intgrfldzqry1id_pengembalian: TIntegerField;
    dtfldzqry1tgl_kembali: TDateField;
    intgrfldzqry1id_peminjaman: TIntegerField;
    strngfldzqry1denda: TStringField;
    strngfldzqry1keterangan: TStringField;
    btn6: TButton;
    frxpengembalian: TfrxReport;
    frxdbpengembalian: TfrxDBDataset;
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
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id:string;

implementation

{$R *.dfm}

procedure TForm7.bersih;
begin
edt1.Clear;
edt2.Clear;
end;

procedure TForm7.enable;
begin
Cb1.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
end;

procedure TForm7.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;

Cb1.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
enable;
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (zqry1.Locate('tgl_kembali', dtp1.Date,[])) and (zqry1.Locate('id_peminjaman', Cb1.Text,[]))  then
  begin
    ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
    posisiawal;
  end else
begin
zqry1.SQL.Clear; //simpan
zqry1.SQL.Add('insert into pengembalian values(null,"'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'","'+Cb1.Text+'","'+edt1.Text+'","'+edt2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pengembalian');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;

end;

procedure TForm7.btn3Click(Sender: TObject);
begin
 if (edt1.Text='') or (edt2.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
if(Cb1.Text = zqry1.FieldList[2].AsString) and (edt1.Text = zqry1.FieldList[3].AsString) and (edt2.Text = zqry1.FieldList[4].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update peminjaman set tgl_kembali="'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'",id_peminjaman="'+Cb1.Text+'",denda="'+edt1.Text+'",keterangan="'+edt2.Text+'" where id_pengembalian ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from pengembalian');
  zqry1.Open;
  posisiawal;
 end

end;

procedure TForm7.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from pengembalian where id_pengembalian="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pengembalian');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end

end;

procedure TForm7.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
enable;

btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

dtp1.Date:= StrToDate(zqry1.Fields[1].AsString);
Cb1.Text:= zqry1.Fields[2].AsString;
edt1.Text:= zqry1.Fields[3].AsString;
edt2.Text:= zqry1.Fields[4].AsString;

end;

procedure TForm7.btn6Click(Sender: TObject);
begin
frxpengembalian.ShowReport(True);
end;

end.
