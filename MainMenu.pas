unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
