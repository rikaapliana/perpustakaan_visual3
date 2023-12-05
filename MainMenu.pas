unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Uanggota, Upetugas, Ubuku, Upeminjaman, Upengembalian;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    Menu1: TMenuItem;
    D1: TMenuItem;
    D2: TMenuItem;
    D3: TMenuItem;
    D4: TMenuItem;
    D5: TMenuItem;
    D6: TMenuItem;
    Close1: TMenuItem;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure D1Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure D3Click(Sender: TObject);
    procedure D4Click(Sender: TObject);
    procedure D5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.D1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.D2Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm2.D3Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm2.D4Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm2.D5Click(Sender: TObject);
begin
Form7.ShowModal;
end;

end.
