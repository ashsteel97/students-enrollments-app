unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.UITypes, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, dxCameraControl,
  dxGDIPlusClasses, dxSkinsCore, dxSkinFoggy, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSevenClassic, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinBlack,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel9: TPanel;
    GroupBox6: TGroupBox;
    Image2: TImage;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    GroupBox1: TGroupBox;
    dxCameraControl1: TdxCameraControl;
    cxButton1: TcxButton;
    GroupBox2: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cxButton2: TcxButton;
    SaveDialog1: TSaveDialog;
    Image1: TImage;
    ImageTK: TImage;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses udm, Unit1, Unit2, Unit3, Unit5, UnitLogin, Unit6, Unit7;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
Form1.Show;

Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
Form2.Show;

Form1.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;


with dmtk.ZCek do
begin
Close;
SQL.Clear;
SQL.Add('SELECT * FROM murid WHERE NOT EXISTS  (SELECT * FROM orangtua WHERE orangtua.nmr_induk_mrd = murid.nmr_induk_mrd)');
Open;
end;

end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
Form3.Show;

Form1.Hide;
Form2.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;

with dmtk.ZCekMutasi do
begin
Close;
SQL.Clear;
SQL.Add('SELECT * FROM murid WHERE NOT EXISTS  (SELECT * FROM mutasi WHERE mutasi.nmr_induk_mrd = murid.nmr_induk_mrd)');
Open;

end;



end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
Form4.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
Form7.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
end;

procedure TForm4.BitBtn6Click(Sender: TObject);
begin
Form6.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form7.Hide;
end;

procedure TForm4.BitBtn7Click(Sender: TObject);
begin
Form5.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm4.BitBtn8Click(Sender: TObject);
BEGIN

with dmtk.ZUser do
begin
Close;
SQL.Clear;
SQL.Add('Select * from user');
Open;
end;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;


FormLogin.Show;
FormLogin.Edit1.SetFocus;
END;

procedure TForm4.cxButton1Click(Sender: TObject);
begin
dxCameraControl1.Capture;
Image2.Picture.Assign(dxCameraControl1.CapturedBitmap);
end;

procedure TForm4.cxButton2Click(Sender: TObject);
var loc : string;
BEGIN

if Edit1.Text = '' then MessageDlg('Anda Belum Memilih Murid' + #13 + 'Silahkan Pilih Terlebih Dahulu', mtinformation,[mbOk],0)
else if Edit2.Text = '' then MessageDlg('Anda Belum Memilih Murid' + #13 + 'Silahkan Pilih Terlebih Dahulu', mtinformation,[mbOk],0)

else

Begin
loc := 'C:\Users\Phantom\Documents\Embarcadero\Studio\Projects\TK PERMATA SARI 2\img\';

with dmtk.ZMurid do
begin
Edit;
FieldByName('img').AsString := loc+Edit1.Text+'.jpg';
Post;
end;

Image2.Picture.SaveToFile(loc + Edit1.Text + '.jpg');

MessageDlg('Foto Murid Dengan Nomor Induk : ' + Edit1.Text + ' dan Nama : '+ Edit2.Text + #13 + 'Telah Berhasil Diambil!', mtinformation,[mbOk],0);

Edit1.Clear;
Edit2.Clear;
Image2.Picture.LoadFromFile('C:\Users\Phantom\Documents\Embarcadero\Studio\Projects\TK PERMATA SARI 2\img\default' + '.jpg');

End;

END;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
var img : string;

BEGIN

  Begin

  with dmtk.ZMurid do
  Begin
  img := FieldByName('img').AsString;

  if img = '' then

  begin
  Edit1.Text := FieldByName('nmr_induk_mrd').AsString;
  Edit2.Text := FieldByName('nama_anak_lengkap').AsString;
  Image2.Picture.LoadFromFile('C:\Users\Phantom\Documents\Embarcadero\Studio\Projects\TK PERMATA SARI 2\img\default' + '.jpg');
  end

  else

  begin
  Image2.Picture.LoadFromFile(img);
  Edit1.Text := FieldByName('nmr_induk_mrd').AsString;
  Edit2.Text := FieldByName('nama_anak_lengkap').AsString;
  end;

  End;

End;

END;

procedure TForm4.DBGrid1DblClick(Sender: TObject);
begin
Image2.Picture.LoadFromFile('C:\Users\Phantom\Documents\Embarcadero\Studio\Projects\TK PERMATA SARI 2\img\default' + '.jpg');
Edit1.Clear;
Edit2.Clear;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
Form6.Refresh;
end;

end.
