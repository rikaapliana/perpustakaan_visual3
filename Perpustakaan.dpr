program Perpustakaan;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  MainMenu in 'MainMenu.pas' {Form2},
  Uanggota in 'Uanggota.pas' {Form3},
  Upetugas in 'Upetugas.pas' {Form4},
  Ubuku in 'Ubuku.pas' {Form5},
  Upeminjaman in 'Upeminjaman.pas' {Form6},
  Upengembalian in 'Upengembalian.pas' {Form7},
  Udenda in 'Udenda.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
