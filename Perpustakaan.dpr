program Perpustakaan;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  MainMenu in 'MainMenu.pas' {Form2},
  Uanggota in 'Uanggota.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
