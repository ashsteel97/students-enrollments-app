unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, dxGDIPlusClasses;

type
  TForm7 = class(TForm)
    Panel9: TPanel;
    GroupBox1: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Panel4: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtnPrint: TBitBtn;
    ComboBox1: TComboBox;
    BitBtnPrintCnl: TBitBtn;
    Panel3: TPanel;
    GroupBox7: TGroupBox;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    PanelCariDalam: TPanel;
    Label18: TLabel;
    ComboBoxCariDalam: TComboBox;
    EditCariDalam: TEdit;
    ButtonCariDalam: TButton;
    Image1: TImage;
    ImageTK: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnPrintCnlClick(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure ButtonCariDalamClick(Sender: TObject);
    procedure ComboBoxCariDalamChange(Sender: TObject);
    procedure EditCariDalamChange(Sender: TObject);
    procedure ComboBoxCariDalamKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnPrintClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses udm, Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, UnitLogin, QRDataSiswa,
  QRMutasiAll, QRSiswaAll, QRSuratMutasi;

procedure TForm7.BitBtnPrintClick(Sender: TObject);
BEGIN

if ComboBox1.ItemIndex = 0 then


Begin
if Edit1.Text = '' then MessageDlg('Anda Belum Memilih Murid' + #13 + 'Silahkan Pilih Terlebih Dahulu', mtinformation,[mbOk],0)
else if Edit2.Text = '' then MessageDlg('Anda Belum Memilih Murid' + #13 + 'Silahkan Pilih Terlebih Dahulu', mtinformation,[mbOk],0)

else
    begin
     with dmtk.ZRptMrdOrtu do
          begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT murid.nmr_induk_mrd, murid.kelompok, murid.thn_pelajaran, murid.img, murid.nama_anak_lengkap, murid.jns_klmn, murid.tmpt_lhr, murid.tgl_lhr, murid.almt_jln, murid.almt_desa_kelurahan, murid.almt_kecamatan, murid.almt_kabupaten_kota, ');
          SQL.Add('murid.agama, murid.kwrgn, orangtua.nama_ayah, orangtua.alamatrmh_ayah, orangtua.agama_ayah, orangtua.pend_ayah, orangtua.pekerjaan_ayah, orangtua.alamatkntr_ayah, ');
          SQL.Add('orangtua.nama_ibu, orangtua.alamatrmh_ibu, orangtua.agama_ibu, orangtua.pend_ibu, orangtua.pekerjaan_ibu, orangtua.alamatkntr_ibu, ');
          SQL.Add('orangtua.nama_wali, orangtua.hubungan_wali, orangtua.pend_wali, orangtua.pekerjaan_wali ');
          SQL.Add('FROM murid INNER JOIN orangtua ON orangtua.nmr_induk_mrd = murid.nmr_induk_mrd ');
          SQL.Add('WHERE murid.nmr_induk_mrd LIKE ''%' + (Edit1.Text) + '%''');
          Open;
          FormQRDataSiswa.QRImage1.Picture.LoadFromFile(dmtk.ZRptMrdOrtu['img']);
          FormQRDataSiswa.QuickRep1.Preview;
          end;

    end;
End


else if ComboBox1.ItemIndex = 1  then

Begin

with dmtk.ZRptMuridAll do
begin
Close;
Open;
end;

FormQRSiswaAll.QuickRep1.Preview;


End

else if ComboBox1.ItemIndex = 2 then

Begin

with dmtk.ZRptMutasiAll do
begin
Close;
Open;
end;

FormQRMutasiAll.QuickRep1.Preview;


End


END;

procedure TForm7.BitBtnPrintCnlClick(Sender: TObject);
begin

Label28.Visible := False;
Label29.Visible := False;

ComboBox1.ItemIndex := -1;
ComboBox1.Text := '--Pilih Laporan--';

Edit1.Visible := False;
Edit2.Visible := False;

Button1.Visible := False;

Edit1.Clear;
Edit2.Clear;


with dmtk.ZRptMrdOrtu do
begin
Close;
SQL.Clear;
SQL.Add('SELECT murid.nmr_induk_mrd, murid.kelompok, murid.thn_pelajaran, murid.img, murid.nama_anak_lengkap, murid.jns_klmn, murid.tmpt_lhr, murid.tgl_lhr, murid.almt_jln, murid.almt_desa_kelurahan, murid.almt_kecamatan, murid.almt_kabupaten_kota, ');
SQL.Add('murid.agama, murid.kwrgn, orangtua.nama_ayah, orangtua.alamatrmh_ayah, orangtua.agama_ayah, orangtua.pend_ayah, orangtua.pekerjaan_ayah, orangtua.alamatkntr_ayah, ');
SQL.Add('orangtua.nama_ibu, orangtua.alamatrmh_ibu, orangtua.agama_ibu, orangtua.pend_ibu, orangtua.pekerjaan_ibu, orangtua.alamatkntr_ibu, ');
SQL.Add('orangtua.nama_wali, orangtua.hubungan_wali, orangtua.pend_wali, orangtua.pekerjaan_wali ');
SQL.Add('FROM murid INNER JOIN orangtua ON orangtua.nmr_induk_mrd = murid.nmr_induk_mrd');
Open;
end;




end;

procedure TForm7.Button1Click(Sender: TObject);
begin
Panel3.Visible := True;
Panel9.Enabled := False;
Panel3.BringToFront;

with dmtk.ZRptMrdOrtu do
begin
Close;
Open;
end;


end;



procedure TForm7.ButtonCariDalamClick(Sender: TObject);
Begin

begin
if EditCariDalam.Text = '' then
    begin
        with dmtk.ZRptMrdOrtu do
        begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT murid.nmr_induk_mrd, murid.kelompok, murid.thn_pelajaran, murid.nama_anak_lengkap, murid.jns_klmn, murid.tmpt_lhr, murid.tgl_lhr, murid.almt_jln, murid.almt_desa_kelurahan, murid.almt_kecamatan, murid.almt_kabupaten_kota, murid.agama, murid.kwrgn, ');
        SQL.Add('orangtua.nama_ayah, orangtua.alamatrmh_ayah, orangtua.agama_ayah, orangtua.pend_ayah, orangtua.pekerjaan_ayah, orangtua.alamatkntr_ayah, ');
        SQL.Add('orangtua.nama_ibu, orangtua.alamatrmh_ibu, orangtua.agama_ibu, orangtua.pend_ibu, orangtua.pekerjaan_ibu, orangtua.alamatkntr_ibu, ');
        SQL.Add('orangtua.nama_wali, orangtua.hubungan_wali, orangtua.pend_wali, orangtua.pekerjaan_wali ');
        SQL.Add('FROM murid INNER JOIN orangtua ON orangtua.nmr_induk_mrd = murid.nmr_induk_mrd');
        Open;
        end;
    end

    else if ComboBoxCariDalam.ItemIndex = (0) then
    with dmtk.ZRptMrdOrtu do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT murid.nmr_induk_mrd, murid.kelompok, murid.thn_pelajaran, murid.nama_anak_lengkap, murid.jns_klmn, murid.tmpt_lhr, murid.tgl_lhr, murid.almt_jln, murid.almt_desa_kelurahan, murid.almt_kecamatan, murid.almt_kabupaten_kota, murid.agama, murid.kwrgn, ');
    SQL.Add('orangtua.nama_ayah, orangtua.alamatrmh_ayah, orangtua.agama_ayah, orangtua.pend_ayah, orangtua.pekerjaan_ayah, orangtua.alamatkntr_ayah, ');
    SQL.Add('orangtua.nama_ibu, orangtua.alamatrmh_ibu, orangtua.agama_ibu, orangtua.pend_ibu, orangtua.pekerjaan_ibu, orangtua.alamatkntr_ibu, ');
    SQL.Add('orangtua.nama_wali, orangtua.hubungan_wali, orangtua.pend_wali, orangtua.pekerjaan_wali ');
    SQL.Add('FROM murid INNER JOIN orangtua ON orangtua.nmr_induk_mrd = murid.nmr_induk_mrd ');
    SQL.Add('WHERE murid.nmr_induk_mrd LIKE ''%' + (EditCariDalam.Text) + '%''');
    Open;


    if dmtk.ZRptMrdOrtu.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    EditCariDalam.Clear;
    end
    end

    else if ComboBoxCariDalam.ItemIndex = (1) then
    with dmtk.ZRptMrdOrtu do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT murid.nmr_induk_mrd, murid.kelompok, murid.thn_pelajaran, murid.nama_anak_lengkap, murid.jns_klmn, murid.tmpt_lhr, murid.tgl_lhr, murid.almt_jln, murid.almt_desa_kelurahan, murid.almt_kecamatan, murid.almt_kabupaten_kota, murid.agama, murid.kwrgn, ');
    SQL.Add('orangtua.nama_ayah, orangtua.alamatrmh_ayah, orangtua.agama_ayah, orangtua.pend_ayah, orangtua.pekerjaan_ayah, orangtua.alamatkntr_ayah, ');
    SQL.Add('orangtua.nama_ibu, orangtua.alamatrmh_ibu, orangtua.agama_ibu, orangtua.pend_ibu, orangtua.pekerjaan_ibu, orangtua.alamatkntr_ibu, ');
    SQL.Add('orangtua.nama_wali, orangtua.hubungan_wali, orangtua.pend_wali, orangtua.pekerjaan_wali ');
    SQL.Add('FROM murid INNER JOIN orangtua ON orangtua.nmr_induk_mrd = murid.nmr_induk_mrd ');
    SQL.Add('WHERE murid.nama_anak_lengkap LIKE ''%' + (EditCariDalam.Text) + '%''');
    Open;


    if dmtk.ZRptMrdOrtu.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    EditCariDalam.Clear;
    end
    end

    else if ComboBoxCariDalam.ItemIndex = (2) then
    with dmtk.ZRptMrdOrtu do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT murid.nmr_induk_mrd, murid.kelompok, murid.thn_pelajaran, murid.nama_anak_lengkap, murid.jns_klmn, murid.tmpt_lhr, murid.tgl_lhr, murid.almt_jln, murid.almt_desa_kelurahan, murid.almt_kecamatan, murid.almt_kabupaten_kota, murid.agama, murid.kwrgn, ');
    SQL.Add('orangtua.nama_ayah, orangtua.alamatrmh_ayah, orangtua.agama_ayah, orangtua.pend_ayah, orangtua.pekerjaan_ayah, orangtua.alamatkntr_ayah, ');
    SQL.Add('orangtua.nama_ibu, orangtua.alamatrmh_ibu, orangtua.agama_ibu, orangtua.pend_ibu, orangtua.pekerjaan_ibu, orangtua.alamatkntr_ibu, ');
    SQL.Add('orangtua.nama_wali, orangtua.hubungan_wali, orangtua.pend_wali, orangtua.pekerjaan_wali ');
    SQL.Add('FROM murid INNER JOIN orangtua ON orangtua.nmr_induk_mrd = murid.nmr_induk_mrd ');
    SQL.Add('WHERE murid.kelompok LIKE ''%' + (EditCariDalam.Text) + '%''');
    Open;


    if dmtk.ZRptMrdOrtu.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    EditCariDalam.Clear;
    end
    end


end;
PanelCariDalam.Visible := False;
PanelCariDalam.SendToBack;
End;


procedure TForm7.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then

begin

Label28.Visible := True;
Label29.Visible := True;

Edit1.Visible := True;
Edit2.Visible := True;

Button1.Visible := True;



end;


end;

procedure TForm7.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm7.ComboBoxCariDalamChange(Sender: TObject);
begin
EditCariDalam.Enabled := True;
end;

procedure TForm7.ComboBoxCariDalamKeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm7.EditCariDalamChange(Sender: TObject);
begin
if EditCariDalam.Text = '' then
    begin
    EditCariDalam.Enabled := False;
    ComboBoxCariDalam.Text := '--Cari Berdasarkan--';

      with dmtk.ZRptMrdOrtu do
      begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT murid.nmr_induk_mrd, murid.kelompok, murid.thn_pelajaran, murid.nama_anak_lengkap, murid.jns_klmn, murid.tmpt_lhr, murid.tgl_lhr, murid.almt_jln, murid.almt_desa_kelurahan, murid.almt_kecamatan, murid.almt_kabupaten_kota, murid.agama, murid.kwrgn, ');
      SQL.Add('orangtua.nama_ayah, orangtua.alamatrmh_ayah, orangtua.agama_ayah, orangtua.pend_ayah, orangtua.pekerjaan_ayah, orangtua.alamatkntr_ayah, ');
      SQL.Add('orangtua.nama_ibu, orangtua.alamatrmh_ibu, orangtua.agama_ibu, orangtua.pend_ibu, orangtua.pekerjaan_ibu, orangtua.alamatkntr_ibu, ');
      SQL.Add('orangtua.nama_wali, orangtua.hubungan_wali, orangtua.pend_wali, orangtua.pekerjaan_wali ');
      SQL.Add('FROM murid INNER JOIN orangtua ON orangtua.nmr_induk_mrd = murid.nmr_induk_mrd');
      Open;
      end;

    end;

end;

procedure TForm7.BitBtn15Click(Sender: TObject);
begin
Panel3.Visible := False;
Panel9.Enabled := True;

end;

procedure TForm7.BitBtn16Click(Sender: TObject);
BEGIN

      with dmtk.ZRptMrdOrtu do
      begin
      Edit1.Text := FieldByName('nmr_induk_mrd').AsString;
      Edit2.Text := FieldByName('nama_anak_lengkap').AsString;
      end;

      {with dmtk.ZRptMrdOrtu do
      begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT murid.nmr_induk_mrd, murid.kelompok, murid.thn_pelajaran, murid.nama_anak_lengkap, murid.jns_klmn, murid.tmpt_lhr, murid.tgl_lhr, murid.almt_jln, murid.almt_desa_kelurahan, murid.almt_kecamatan, murid.almt_kabupaten_kota, murid.agama, murid.kwrgn, ');
      SQL.Add('orangtua.nama_ayah, orangtua.alamatrmh_ayah, orangtua.agama_ayah, orangtua.pend_ayah, orangtua.pekerjaan_ayah, orangtua.alamatkntr_ayah, ');
      SQL.Add('orangtua.nama_ibu, orangtua.alamatrmh_ibu, orangtua.agama_ibu, orangtua.pend_ibu, orangtua.pekerjaan_ibu, orangtua.alamatkntr_ibu, ');
      SQL.Add('orangtua.nama_wali, orangtua.hubungan_wali, orangtua.pend_wali, orangtua.pekerjaan_wali ');
      SQL.Add('FROM murid INNER JOIN orangtua ON orangtua.nmr_induk_mrd = murid.nmr_induk_mrd ');
      SQL.Add('WHERE murid.nmr_induk_mrd LIKE ''%' + (EditCariDalam.Text) + '%''');
      Open;
      end;}


Panel3.Visible := False;
Panel9.Enabled := True;

END;

procedure TForm7.BitBtn17Click(Sender: TObject);
begin
PanelCariDalam.Visible := True;
PanelCariDalam.BringToFront;
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
Form1.Show;

Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
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

procedure TForm7.BitBtn3Click(Sender: TObject);
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

procedure TForm7.BitBtn4Click(Sender: TObject);
begin
Form4.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm7.BitBtn5Click(Sender: TObject);
begin
Form7.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
end;

procedure TForm7.BitBtn6Click(Sender: TObject);
begin
Form6.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form7.Hide;
end;

procedure TForm7.BitBtn7Click(Sender: TObject);
begin
Form5.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm7.BitBtn8Click(Sender: TObject);
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

procedure TForm7.FormActivate(Sender: TObject);
begin
Form6.Refresh;
end;

end.
