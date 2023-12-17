unit Udenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass,
  frxDBSet;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
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
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    Cb1: TComboBox;
    dtp1: TDateTimePicker;
    btn6: TButton;
    frxdenda: TfrxReport;
    frxdbdenda: TfrxDBDataset;
    procedure bersih;
    procedure enable;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id:string;

implementation

{$R *.dfm}

procedure TForm8.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
end;

procedure TForm8.enable;
begin
Cb1.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;

end;

procedure TForm8.posisiawal;
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
edt3.Enabled:= False;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
enable;
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (zqry1.Locate('id_pengembalian', Cb1.Text,[])) and (zqry1.Locate('keterangan', edt1.Text,[]))  then
  begin
    ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
    posisiawal;
  end else
  begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into dends values(null,"'+Cb1.Text+'","'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'","'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from denda');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;

  end;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
if(Cb1.Text = zqry1.FieldList[1].AsString) and (edt1.Text = zqry1.FieldList[3].AsString) and (edt2.Text = zqry1.FieldList[4].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update denda set id_pengembalian="'+Cb1.Text+'",tgl_denda="'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'",keterangan="'+edt1.Text+'",jml_denda="'+edt2.Text+'",status_pembayaran="'+edt3.Text+'" where id_denda ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from denda');
  zqry1.Open;
  posisiawal;
 end
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from denda where id_denda="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from denda');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.dbgrd1DblClick(Sender: TObject);
begin
enable;

btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

Cb1.Text:= zqry1.Fields[1].AsString;
dtp1.Date:= StrToDate(zqry1.Fields[2].AsString);
edt1.Text:= zqry1.Fields[3].AsString;
edt2.Text:= zqry1.Fields[4].AsString;
edt3.Text:= zqry1.Fields[4].AsString;
end;

procedure TForm8.btn6Click(Sender: TObject);
begin
frxdenda.ShowReport(True);
end;

end.
