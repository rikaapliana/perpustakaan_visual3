unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    btnb1: TButton;
    zqry1: TZQuery;
    con1: TZConnection;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    lbl1: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    procedure btnb1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses MainMenu;

{$R *.dfm}

procedure TForm1.btnb1Click(Sender: TObject);
begin
with zqry1 do
  begin
    SQL.Clear;
    SQL.Add('select * from user where username='+QuotedStr(edt1.Text));
    Open;
  end;
  //jika tidak ada akun muncul pesan dibawah
  if zqry1.RecordCount=0 then
  Application.MessageBox('Username anda tidak terdaftar','informasi',MB_OK or MB_ICONINFORMATION)
  else
  begin
  if zqry1.FieldByName('password').AsString<>edt2.Text then
  Application.MessageBox('Silahkan cek password dengan benar','error',MB_OK or MB_ICONERROR)
  else
  begin
    Hide;
    Form2.Show;
    MessageDlg('Anda berhasil login',mtInformation,[mbOK],0);
  end;
  end;

end;

end.
