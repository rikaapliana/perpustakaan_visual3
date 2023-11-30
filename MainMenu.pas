unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Uanggota, Upetugas;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    Menu1: TMenuItem;
    D1: TMenuItem;
    InputanPetugas1: TMenuItem;
    InputanPeminjaman1: TMenuItem;
    InputanPenfembalian1: TMenuItem;
    InputanDenda1: TMenuItem;
    InputanDenda2: TMenuItem;
    L1: TMenuItem;
    Close1: TMenuItem;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure D1Click(Sender: TObject);
    procedure InputanPetugas1Click(Sender: TObject);
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

procedure TForm2.InputanPetugas1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

end.
