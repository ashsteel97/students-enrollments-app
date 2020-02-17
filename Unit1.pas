unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.UITypes, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, JPEG, PNGImage, DateUtils,
  dxGDIPlusClasses, dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinFoggy, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSevenClassic, cxClasses,
  cxLookAndFeels, dxSkinsForm, dxSkinBlack, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
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
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel9: TPanel;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox5: TComboBox;
    ComboBox4: TComboBox;
    ComboBox6: TComboBox;
    DateTimePicker1: TDateTimePicker;
    GroupBox2: TGroupBox;
    Label25: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox3: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    ComboBox7: TComboBox;
    GroupBox4: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    GroupBox5: TGroupBox;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    GroupBox6: TGroupBox;
    Image2: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    BitBtn9: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn14: TBitBtn;
    DBGrid1: TDBGrid;
    Panel10: TPanel;
    Label4: TLabel;
    ComboBox8: TComboBox;
    Edit14: TEdit;
    Button2: TButton;
    ImageTK: TImage;
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox6KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox7KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2DropDown(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure Clean;
    procedure Enable;
    procedure Disable;
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn12Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14Change(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses udm, Unit2, Unit3, Unit4, Unit5, UnitLogin, Unit6, Unit7;

procedure TForm1.BitBtn10Click(Sender: TObject);  //BUTTON EDIT//
BEGIN

Enable;

BitBtn9.Visible  := False;
BitBtn10.Visible := False;
BitBtn11.Visible := False;
BitBtn12.Visible := False;

BitBtn13.Visible := True;
BitBtn14.Visible := True;


  Begin

      with dmtk.ZMurid do

      begin
      Edit1.Text      :=  FieldByName('nmr_induk_mrd').AsString;
      ComboBox1.Text  :=  FieldByName('kelompok').AsString;
      ComboBox2.Text  :=  FieldByName('thn_pelajaran').AsString;
      Edit2.Text      :=  FieldByName('nama_anak_lengkap').AsString;
      Edit3.Text      :=  FieldByName('nama_anak_panggilan').AsString;
      ComboBox3.Text  :=  FieldByName('jns_klmn').AsString;
      Edit4.Text      :=  FieldByName('tmpt_lhr').AsString;
      DateTimePicker1.Date  :=  FieldByName('tgl_lhr').AsDateTime;
      Edit5.Text      :=  FieldByName('almt_jln').AsString;
      Edit6.Text      :=  FieldByName('almt_desa_kelurahan').AsString;
      Edit7.Text      :=  FieldByName('almt_kecamatan').AsString;
      Edit8.Text      :=  FieldByName('almt_kabupaten_kota').AsString;
      Edit9.Text      :=  FieldByName('almt_provinsi').AsString;
      ComboBox4.Text  :=  FieldByName('agama').AsString;
      ComboBox6.Text  :=  FieldByName('kwrgn').AsString;
      Edit10.Text     :=  FieldByName('anak_ke').AsString;
      Edit11.Text     :=  FieldByName('jml_sdr_kndng').AsString;
      Edit12.Text     :=  FieldByName('jml_sdr_tiri').AsString;
      Edit13.Text     :=  FieldByName('jml_sdr_angkat').AsString;
      ComboBox7.Text  :=  FieldByName('status_anak').AsString;
      Edit15.Text     :=  FieldByName('bhs_sehari_hari').AsString;
      ComboBox5.Text  :=  FieldByName('gol_dar').AsString;
      Edit16.Text     :=  FieldByName('pnykt_yg_diderita').AsString;
      Edit17.Text     :=  FieldByName('imunisasi_yg_diterima').AsString;
      Edit18.Text     :=  FieldByName('ciri_ciri_khusus').AsString;
      end;

  End;

END;

procedure TForm1.BitBtn11Click(Sender: TObject); //BUTTON DELETE
var nama,nmr : string;
BEGIN

with dmtk.ZMurid do

  begin
  nama := dmtk.ZMurid.FieldValues['nama_anak_lengkap'];
  nmr := dmtk.ZMurid.FieldValues['nmr_induk_mrd'];
  end;


if MessageDlg('Yakin Anda Akan Hapus Data Murid Ini?' +#13 +'Note : Data Orangtua/Wali Pada Murid Ini Juga Akan Terhapus!' + #13+ #13 + 'Nomor Induk Murid : ' + nmr + #13 +'Nama Lengkap Murid : ' + nama, mtconfirmation,[mbYes,mbNo],0,mbNo)= mrYes then
Begin

  with dmtk.ZMurid do
  begin
  dmtk.ZMurid.Delete;
  MessageDlg('Data Murid Dengan Nomor Induk Murid : ' + nmr + #13 +'Atas Nama : ' + nama + #13 + 'Telah Berhasil Dihapus!', mtinformation,[mbOk],0);
  end;

  begin

  with dmtk.ZOrtu do
  begin

  dmtk.ZOrtu.SQL.Text:='DELETE FROM orangtua WHERE nmr_induk_mrd="'+Edit1.Text+'"';
  dmtk.ZOrtu.ExecSQL;

  Close;
  SQL.Clear;
  SQL.Add('Select * from orangtua');
  ExecSQL;
  Open;

  end;

  end;


DBGrid1DblClick(BitBtn11);

End;


END;

procedure TForm1.BitBtn12Click(Sender: TObject);
begin
Panel10.Visible := True;
Panel9.Enabled := False;
Panel10.BringToFront;
end;

procedure TForm1.BitBtn13Click(Sender: TObject);   //BUTTON SAVE//
var  namaanak : string;
BEGIN

  Begin
  with dmtk.ZMurid do

  begin

  Edit;
  FieldByName('nmr_induk_mrd').AsString := Edit1.Text;
  FieldByName('kelompok').AsString := ComboBox1.Text;
  FieldByName('thn_pelajaran').AsString := ComboBox2.Text;
  FieldByName('nama_anak_lengkap').AsString := Edit2.Text;
  FieldByName('nama_anak_panggilan').AsString := Edit3.Text;
  FieldByName('jns_klmn').AsString := ComboBox3.Text;
  FieldByName('tmpt_lhr').AsString := Edit4.Text;
  FieldByName('tgl_lhr').AsDateTime := DateTimePicker1.Date;
  FieldByName('almt_jln').AsString := Edit5.Text;
  FieldByName('almt_desa_kelurahan').AsString := Edit6.Text;
  FieldByName('almt_kecamatan').AsString := Edit7.Text;
  FieldByName('almt_kabupaten_kota').AsString := Edit8.Text;
  FieldByName('almt_provinsi').AsString := Edit9.Text;
  FieldByName('agama').AsString := ComboBox4.Text;
  FieldByName('kwrgn').AsString := ComboBox6.Text;
  FieldByName('anak_ke').AsString := Edit10.Text;
  FieldByName('jml_sdr_kndng').AsString := Edit11.Text;
  FieldByName('jml_sdr_tiri').AsString := Edit12.Text;
  FieldByName('jml_sdr_angkat').AsString := Edit13.Text;
  FieldByName('status_anak').AsString := ComboBox7.Text;
  FieldByName('bhs_sehari_hari').AsString := Edit15.Text;
  FieldByName('gol_dar').AsString := ComboBox5.Text;
  FieldByName('pnykt_yg_diderita').AsString := Edit16.Text;
  FieldByName('imunisasi_yg_diterima').AsString := Edit17.Text;
  FieldByName('ciri_ciri_khusus').AsString := Edit18.Text;
  Post;

  end;

  with dmtk.ZOrtu do
  begin

  dmtk.ZOrtu.SQL.Text:='UPDATE orangtua set nama_anak_lengkap="'+Edit2.Text+'" Where nmr_induk_mrd="'+Edit1.Text+'"';
  dmtk.ZOrtu.ExecSQL;

  Close;
  SQL.Clear;
  SQL.Add('Select * from orangtua');
  ExecSQL;
  Open;

  end;


  with dmtk.ZMutasi do
  begin

  dmtk.ZMutasi.SQL.Text:='UPDATE mutasi set nama_anak_lengkap="'+Edit2.Text+'" Where nmr_induk_mrd="'+Edit1.Text+'"';
  dmtk.ZMutasi.ExecSQL;

  Close;
  SQL.Clear;
  SQL.Add('Select * from mutasi');
  ExecSQL;
  Open;

  end;



  BitBtn13.Visible := False;
  BitBtn14.Visible := False;

  Clean;

  BitBtn9.Visible := True;
  BitBtn10.Visible := True;
  BitBtn11.Visible := True;
  BitBtn12.Visible := True;

  End;

END;

procedure TForm1.BitBtn14Click(Sender: TObject);
BEGIN

BitBtn13.Visible := False;
BitBtn14.Visible := False;

Clean;

BitBtn9.Visible := True;
BitBtn10.Visible := True;
BitBtn11.Visible := True;
BitBtn12.Visible := True;

END;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Form1.Show;

Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
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

with Form2 do
begin
  with dmtk.ZOrtu do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM orangtua');
  Open;

  end;
end;


end;

procedure TForm1.BitBtn3Click(Sender: TObject);
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

with Form3 do
begin
  with dmtk.ZMutasi do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM mutasi');
  Open;

  end;
end;


end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
Form4.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
Form7.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
Form6.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form7.Hide;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
Form5.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
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

procedure TForm1.BitBtn9Click(Sender: TObject);  //BUTTON INPUT//
BEGIN

//PENGECEKAN//

if Edit1.Text = '' then MessageDlg('Anda Belum Mengisi Nomor Induk Murid' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)
else if ComboBox1.Text = '--Masukkan TTL--' then MessageDlg('Anda Belum Mengisi TTL Murid' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)
else if ComboBox2.Text = '--Pilih Thn Ajaran--' then MessageDlg('Anda Belum Mengisi Tahun Pelajaran' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)
else if Edit2.Text = '' then MessageDlg('Anda Belum Mengisi Nama Lengkap Murid' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)
else if Edit4.Text = '' then MessageDlg('Anda Belum Mengisi TTL Murid' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)

else

  Begin

  with udm.dmtk.ZMurid do
  begin

  Append;
  FieldByName('nmr_induk_mrd').AsString := Edit1.Text;
  FieldByName('kelompok').AsString := ComboBox1.Text;
  FieldByName('thn_pelajaran').AsString := ComboBox2.Text;
  FieldByName('nama_anak_lengkap').AsString := Edit2.Text;
  FieldByName('nama_anak_panggilan').AsString := Edit3.Text;
  FieldByName('jns_klmn').AsString := ComboBox3.Text;
  FieldByName('tmpt_lhr').AsString := Edit4.Text;
  FieldByName('tgl_lhr').AsDateTime := DateTimePicker1.Date;
  FieldByName('almt_jln').AsString := Edit5.Text;
  FieldByName('almt_desa_kelurahan').AsString := Edit6.Text;
  FieldByName('almt_kecamatan').AsString := Edit7.Text;
  FieldByName('almt_kabupaten_kota').AsString := Edit8.Text;
  FieldByName('almt_provinsi').AsString := Edit9.Text;
  FieldByName('agama').AsString := ComboBox4.Text;
  FieldByName('kwrgn').AsString := ComboBox6.Text;
  FieldByName('anak_ke').AsString := Edit10.Text;
  FieldByName('jml_sdr_kndng').AsString := Edit11.Text;
  FieldByName('jml_sdr_tiri').AsString := Edit12.Text;
  FieldByName('jml_sdr_angkat').AsString := Edit13.Text;
  FieldByName('status_anak').AsString := ComboBox7.Text;
  FieldByName('bhs_sehari_hari').AsString := Edit15.Text;
  FieldByName('gol_dar').AsString := ComboBox5.Text;
  FieldByName('pnykt_yg_diderita').AsString := Edit16.Text;
  FieldByName('imunisasi_yg_diterima').AsString := Edit17.Text;
  FieldByName('ciri_ciri_khusus').AsString := Edit18.Text;
  Post;


  end;

  Clean;
  Button1.SetFocus;

  End;

END;

procedure TForm1.Button1Click(Sender: TObject);
var
n : integer;

BEGIN

if udm.dmtk.ZMurid.RecordCount = 0 then

begin
n := 1;
Edit1.Text := IntToStr(n);
end

else

  Begin
  dmtk.ZMurid.Last;
  n := dmtk.ZMurid['nmr_induk_mrd'];

    if n >= 99999 then
    begin
    MessageDlg('Data Telah Penuh' + #13 + 'Silahkan Back Up Data, Kemudian Empty Data', mtinformation,[mbOk],0);
    Edit1.Clear;
    end

    else
    begin
    n := n + 1;
    Edit1.Text:=IntToStr(n);
    end;
  End;

END;

procedure TForm1.Button2Click(Sender: TObject);
Begin

begin
if Edit14.Text = '' then
    begin
        with dmtk.ZMurid do
        begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM murid');
        Open;
        end
    end

    else if ComboBox8.ItemIndex = (0) then
    with dmtk.ZMurid do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid WHERE nmr_induk_mrd LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZMurid.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit14.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (1) then
    with dmtk.ZMurid do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid WHERE kelompok LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZMurid.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit14.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (2) then
    with dmtk.ZMurid do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid WHERE thn_pelajaran LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZMurid.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit14.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (3) then
    with dmtk.ZMurid do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid WHERE nama_anak_lengkap LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZMurid.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit14.Clear;
    end
    end

end;
Panel9.Enabled := True;
Panel10.Visible := False;
Panel10.SendToBack;
End;


procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm1.ComboBox2DropDown(Sender: TObject);
var
year,i,x: integer;

BEGIN

if ComboBox2.Items.Count < 8 then
Begin

year := (YearOf(Now)-3);
i := 1;

with ComboBox2 do

  begin
  for i := 1 to 8 do
    begin
    x := year+1;
    ComboBox2.Items.Add(IntToStr(year) + '/' + IntToStr(x));
    year := year+1;
    end;

  end;

End;

END;

procedure TForm1.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm1.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm1.ComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm1.ComboBox4KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm1.ComboBox6KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm1.ComboBox7KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm1.ComboBox8Change(Sender: TObject);
begin
Edit14.Enabled := True;
end;

procedure TForm1.ComboBox8KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm1.DateTimePicker1Change(Sender: TObject);
var year, yearnow, month, monthnow, x, y : integer;
BEGIN
//if YearsBetween(Now,DateTimePicker1.Date) <= 5 then

year := YearOf(DateTimePicker1.Date);
yearnow := YearOf(Now);
month := MonthOf(DateTimePicker1.Date);
monthnow := MonthOf(Now);

x := yearnow-year;

if x < 5 then

Begin

begin
ComboBox1.ItemIndex := 0;
end;

End



else if x = 5 then

Begin
y := month - 7;

if y > 0 then
begin
ComboBox1.ItemIndex := 0;
end

else if y <= 0 then
begin
ComboBox1.ItemIndex := 1;
end;


End

else if x > 5 then

Begin

begin
ComboBox1.ItemIndex := 1;
end;

End


END;

procedure TForm1.DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;


procedure TForm1.DBGrid1CellClick(Column: TColumn);
var  img : string;
BEGIN

Disable;
BitBtn9.Enabled := False;
BitBtn10.Enabled := True;
BitBtn11.Enabled := True;

Button1.Enabled := False;

  Begin

      with dmtk.ZMurid do
      Begin
      img := FieldByName('img').AsString;

      if img = '' then

          begin
          Edit1.Text      :=  FieldByName('nmr_induk_mrd').AsString;
          ComboBox1.Text  :=  FieldByName('kelompok').AsString;
          ComboBox2.Text  :=  FieldByName('thn_pelajaran').AsString;
          Edit2.Text      :=  FieldByName('nama_anak_lengkap').AsString;
          Edit3.Text      :=  FieldByName('nama_anak_panggilan').AsString;
          ComboBox3.Text  :=  FieldByName('jns_klmn').AsString;
          Edit4.Text      :=  FieldByName('tmpt_lhr').AsString;
          DateTimePicker1.Date  :=  FieldByName('tgl_lhr').AsDateTime;
          Edit5.Text      :=  FieldByName('almt_jln').AsString;
          Edit6.Text      :=  FieldByName('almt_desa_kelurahan').AsString;
          Edit7.Text      :=  FieldByName('almt_kecamatan').AsString;
          Edit8.Text      :=  FieldByName('almt_kabupaten_kota').AsString;
          Edit9.Text      :=  FieldByName('almt_provinsi').AsString;
          ComboBox4.Text  :=  FieldByName('agama').AsString;
          ComboBox6.Text  :=  FieldByName('kwrgn').AsString;
          Edit10.Text     :=  FieldByName('anak_ke').AsString;
          Edit11.Text     :=  FieldByName('jml_sdr_kndng').AsString;
          Edit12.Text     :=  FieldByName('jml_sdr_tiri').AsString;
          Edit13.Text     :=  FieldByName('jml_sdr_angkat').AsString;
          ComboBox7.Text  :=  FieldByName('status_anak').AsString;
          Edit15.Text     :=  FieldByName('bhs_sehari_hari').AsString;
          ComboBox5.Text  :=  FieldByName('gol_dar').AsString;
          Edit16.Text     :=  FieldByName('pnykt_yg_diderita').AsString;
          Edit17.Text     :=  FieldByName('imunisasi_yg_diterima').AsString;
          Edit18.Text     :=  FieldByName('ciri_ciri_khusus').AsString;
          Image2.Picture.LoadFromFile('C:\Users\Phantom\Documents\Embarcadero\Studio\Projects\TK PERMATA SARI 2\img\default' + '.jpg');
          end

          else

          begin
          Edit1.Text      :=  FieldByName('nmr_induk_mrd').AsString;
          ComboBox1.Text  :=  FieldByName('kelompok').AsString;
          ComboBox2.Text  :=  FieldByName('thn_pelajaran').AsString;
          Edit2.Text      :=  FieldByName('nama_anak_lengkap').AsString;
          Edit3.Text      :=  FieldByName('nama_anak_panggilan').AsString;
          ComboBox3.Text  :=  FieldByName('jns_klmn').AsString;
          Edit4.Text      :=  FieldByName('tmpt_lhr').AsString;
          DateTimePicker1.Date  :=  FieldByName('tgl_lhr').AsDateTime;
          Edit5.Text      :=  FieldByName('almt_jln').AsString;
          Edit6.Text      :=  FieldByName('almt_desa_kelurahan').AsString;
          Edit7.Text      :=  FieldByName('almt_kecamatan').AsString;
          Edit8.Text      :=  FieldByName('almt_kabupaten_kota').AsString;
          Edit9.Text      :=  FieldByName('almt_provinsi').AsString;
          ComboBox4.Text  :=  FieldByName('agama').AsString;
          ComboBox6.Text  :=  FieldByName('kwrgn').AsString;
          Edit10.Text     :=  FieldByName('anak_ke').AsString;
          Edit11.Text     :=  FieldByName('jml_sdr_kndng').AsString;
          Edit12.Text     :=  FieldByName('jml_sdr_tiri').AsString;
          Edit13.Text     :=  FieldByName('jml_sdr_angkat').AsString;
          ComboBox7.Text  :=  FieldByName('status_anak').AsString;
          Edit15.Text     :=  FieldByName('bhs_sehari_hari').AsString;
          ComboBox5.Text  :=  FieldByName('gol_dar').AsString;
          Edit16.Text     :=  FieldByName('pnykt_yg_diderita').AsString;
          Edit17.Text     :=  FieldByName('imunisasi_yg_diterima').AsString;
          Edit18.Text     :=  FieldByName('ciri_ciri_khusus').AsString;
          Image2.Picture.LoadFromFile(img);
          end;

      End;

  End;

END;



procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
Enable;
Clean;
Button1.SetFocus;
end;

procedure TForm1.Edit14Change(Sender: TObject);
begin
if Edit14.Text = '' then
    begin
    Edit14.Enabled := False;
    ComboBox8.Text := '--Cari Berdasarkan--';

      with dmtk.ZMurid do
      begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from murid');
      Open;
      end;

    end;
end;


procedure TForm1.FormActivate(Sender: TObject);
begin
Form6.Refresh;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
DateTimePicker1.MaxDate := IncSecond(Date);
DateTimePicker1.Date := Date;
end;

procedure TForm1.Disable;
BEGIN

  Edit1.Enabled := False;
  Edit2.Enabled := False;
  Edit3.Enabled := False;
  Edit4.Enabled := False;
  Edit5.Enabled := False;
  Edit6.Enabled := False;
  Edit7.Enabled := False;
  Edit8.Enabled := False;
  Edit9.Enabled := False;
  Edit10.Enabled := False;
  Edit11.Enabled := False;
  Edit12.Enabled := False;
  Edit13.Enabled := False;
  Edit15.Enabled := False;
  Edit16.Enabled := False;
  Edit17.Enabled := False;
  Edit18.Enabled := False;

  ComboBox1.Enabled := False;
  ComboBox2.Enabled := False;
  ComboBox3.Enabled := False;
  ComboBox4.Enabled := False;
  ComboBox5.Enabled := False;
  ComboBox6.Enabled := False;
  ComboBox7.Enabled := False;

  DateTimePicker1.Enabled := False;



END;



procedure TForm1.Enable;
BEGIN


  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  Edit5.Enabled := True;
  Edit6.Enabled := True;
  Edit7.Enabled := True;
  Edit8.Enabled := True;
  Edit9.Enabled := True;
  Edit10.Enabled := True;
  Edit11.Enabled := True;
  Edit12.Enabled := True;
  Edit13.Enabled := True;
  Edit15.Enabled := True;
  Edit16.Enabled := True;
  Edit17.Enabled := True;
  Edit18.Enabled := True;


  ComboBox2.Enabled := True;
  ComboBox3.Enabled := True;
  ComboBox4.Enabled := True;
  ComboBox5.Enabled := True;
  ComboBox6.Enabled := True;
  ComboBox7.Enabled := True;

  DateTimePicker1.Enabled := True;



END;



procedure TForm1.Clean;
BEGIN

  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Edit9.Clear;
  Edit10.Clear;
  Edit11.Clear;
  Edit12.Clear;
  Edit13.Clear;
  Edit15.Clear;
  Edit16.Clear;
  Edit17.Clear;
  Edit18.Clear;

  ComboBox1.ItemIndex := -1;

  ComboBox1.Text := '--Masukkan TTL--';
  ComboBox2.Text := '--Pilih Thn Ajaran--';
  ComboBox3.Text := '--Pilih Jenis Kelamin--';
  ComboBox4.Text := '--Pilih Agama--';
  ComboBox5.Text := '--Pilih Gol. Darah--';
  ComboBox6.Text := '--Pilih KWRGN--';
  ComboBox7.Text := '-Pilih Status-';

  DateTimePicker1.Date := Date;

  Button1.Enabled := True;

  BitBtn9.Enabled := True;
  BitBtn10.Enabled := False;
  BitBtn11.Enabled := False;


  Image2.Picture.LoadFromFile('C:\Users\Phantom\Documents\Embarcadero\Studio\Projects\TK PERMATA SARI 2\img\default'+'.jpg');

END;



end.
