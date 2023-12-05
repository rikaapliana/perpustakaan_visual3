unit Upengembalian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, ComCtrls;

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
    procedure bersih;
    procedure enable;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
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

end.
