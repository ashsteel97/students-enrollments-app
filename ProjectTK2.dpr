program ProjectTK2;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  udm in 'udm.pas' {dmtk: TDataModule},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  Unit5 in 'Unit5.pas' {Form5},
  QRDataSiswa in 'QRDataSiswa.pas' {FormQRDataSiswa},
  Vcl.Themes,
  Vcl.Styles,
  Unit6 in 'Unit6.pas' {Form6},
  frLoading in 'frLoading.pas' {FormLoading},
  Unit7 in 'Unit7.pas' {Form7},
  QRSiswaAll in 'QRSiswaAll.pas' {FormQRSiswaAll},
  QRSuratMutasi in 'QRSuratMutasi.pas' {FormQRSuratMutasi},
  QRMutasiAll in 'QRMutasiAll.pas' {FormQRMutasiAll};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(Tdmtk, dmtk);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TFormLoading, FormLoading);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TFormQRDataSiswa, FormQRDataSiswa);
  Application.CreateForm(TFormQRSiswaAll, FormQRSiswaAll);
  Application.CreateForm(TFormQRSuratMutasi, FormQRSuratMutasi);
  Application.CreateForm(TFormQRMutasiAll, FormQRMutasiAll);
  Application.Run;
end.
