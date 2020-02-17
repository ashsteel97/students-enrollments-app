unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.UITypes, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, JPEG, PNGImage, DateUtils,
  dxGDIPlusClasses;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel9: TPanel;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Edit11: TEdit;
    Edit13: TEdit;
    Edit12: TEdit;
    Edit14: TEdit;
    GroupBox5: TGroupBox;
    BitBtn14: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit3: TEdit;
    Edit6: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Edit7: TEdit;
    Edit10: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    GroupBox1: TGroupBox;
    Label28: TLabel;
    Edit1: TEdit;
    Label29: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Panel3: TPanel;
    GroupBox7: TGroupBox;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Panel10: TPanel;
    Label17: TLabel;
    ComboBox8: TComboBox;
    Edit15: TEdit;
    Button2: TButton;
    PanelCariDalam: TPanel;
    Label18: TLabel;
    ComboBoxCariDalam: TComboBox;
    EditCariDalam: TEdit;
    ButtonCariDalam: TButton;
    Image1: TImage;
    ImageTK: TImage;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Clean;
    procedure Enable;
    procedure Disable;
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox6KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ButtonCariDalamClick(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure ComboBoxCariDalamChange(Sender: TObject);
    procedure EditCariDalamChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBoxCariDalamKeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses udm, Unit1, Unit3, Unit4, Unit5, UnitLogin, Unit6, Unit7;

procedure TForm2.BitBtn10Click(Sender: TObject);
BEGIN

Enable;

Button1.Enabled := False;
Edit1.Enabled := False;
Edit2.Enabled := False;


BitBtn9.Visible  := False;
BitBtn10.Visible := False;
BitBtn11.Visible := False;
BitBtn12.Visible := False;

BitBtn13.Visible := True;
BitBtn14.Visible := True;



  Begin

      with udm.dmtk.ZOrtu do

      begin
      Edit1.Text      :=  FieldByName('nmr_induk_mrd').AsString;
      Edit2.Text      :=  FieldByName('nama_anak_lengkap').AsString;
      Edit3.Text      :=  FieldByName('nama_ayah').AsString;
      Edit4.Text      :=  FieldByName('pekerjaan_ayah').AsString;
      Edit5.Text      :=  FieldByName('alamatrmh_ayah').AsString;
      Edit6.Text      :=  FieldByName('alamatkntr_ayah').AsString;
      Edit7.Text      :=  FieldByName('nama_ibu').AsString;
      Edit8.Text      :=  FieldByName('pekerjaan_ibu').AsString;
      Edit9.Text      :=  FieldByName('alamatrmh_ayah').AsString;
      Edit10.Text     :=  FieldByName('alamatkntr_ibu').AsString;
      Edit11.Text     :=  FieldByName('nama_wali').AsString;
      Edit12.Text     :=  FieldByName('hubungan_wali').AsString;
      Edit13.Text     :=  FieldByName('pend_wali').AsString;
      Edit14.Text     :=  FieldByName('pekerjaan_wali').AsString;
      ComboBox1.Text  :=  FieldByName('agama_ayah').AsString;
      ComboBox2.Text  :=  FieldByName('pend_ayah').AsString;
      ComboBox3.Text  :=  FieldByName('kwrgn_ayah').AsString;
      ComboBox4.Text  :=  FieldByName('agama_ibu').AsString;
      ComboBox5.Text  :=  FieldByName('pend_ibu').AsString;
      ComboBox6.Text  :=  FieldByName('kwrgn_ibu').AsString;
      end;

  End;

END;

procedure TForm2.BitBtn11Click(Sender: TObject);
var nama,nmr : string;
BEGIN

Begin
with udm.dmtk.ZOrtu do

  begin
  nama := dmtk.ZOrtu.FieldValues['nama_anak_lengkap'];
  nmr := dmtk.ZOrtu.FieldValues['nmr_induk_mrd'];
  end;

End;

if MessageDlg('Yakin Anda Akan Hapus Data Orang Tua Murid Ini?' + #13 +'Note : Data Murid Tidak Akan Ikut Terhapus' + #13 + #13 + 'Nomor Induk Murid : ' + nmr + #13 +'Nama Lengkap Murid : ' + nama, mtconfirmation,[mbYes,mbNo],0,mbNo)= mrYes then
Begin
with dmtk.ZOrtu do

  begin
  dmtk.ZOrtu.Delete;
  end;
  Clean;
  Enable;
  Button1.SetFocus;
  MessageDlg('Data Orang Tua Murid Dengan Nomor Induk Murid : ' + nmr + #13 +'Atas Nama Murid : ' + nama + #13 + 'Telah Berhasil Dihapus!', mtinformation,[mbOk],0);
End;


END;

procedure TForm2.BitBtn12Click(Sender: TObject);
begin
Panel10.Visible := True;
Panel9.Enabled := False;
Panel10.BringToFront;
end;

procedure TForm2.BitBtn13Click(Sender: TObject);
BEGIN

  with dmtk.ZOrtu do
  begin

  Edit;
  FieldByName('nmr_induk_mrd').AsString := Edit1.Text;
  FieldByName('nama_anak_lengkap').AsString := Edit2.Text;
  FieldByName('nama_ayah').AsString := Edit3.Text;
  FieldByName('nama_ibu').AsString := Edit7.Text;
  FieldByName('agama_ayah').AsString := ComboBox1.Text;
  FieldByName('agama_ibu').AsString := ComboBox4.Text;
  FieldByName('kwrgn_ayah').AsString := ComboBox3.Text;
  FieldByName('kwrgn_ibu').AsString := ComboBox6.Text;
  FieldByName('pend_ayah').AsString := ComboBox2.Text;
  FieldByName('pend_ibu').AsString := ComboBox5.Text;
  FieldByName('pekerjaan_ayah').AsString := Edit4.Text;
  FieldByName('pekerjaan_ibu').AsString := Edit8.Text;
  FieldByName('alamatrmh_ayah').AsString := Edit5.Text;
  FieldByName('alamatrmh_ibu').AsString := Edit9.Text;
  FieldByName('alamatkntr_ayah').AsString := Edit6.Text;
  FieldByName('alamatkntr_ibu').AsString := Edit10.Text;
  FieldByName('nama_wali').AsString := Edit11.Text;
  FieldByName('hubungan_wali').AsString := Edit12.Text;
  FieldByName('pend_wali').AsString := Edit13.Text;
  FieldByName('pekerjaan_wali').AsString := Edit14.Text;
  Post;

  end;

  BitBtn13.Visible := False;
  BitBtn14.Visible := False;

  Clean;

  BitBtn9.Visible := True;
  BitBtn10.Visible := True;
  BitBtn11.Visible := True;
  BitBtn12.Visible := True;


END;

procedure TForm2.BitBtn14Click(Sender: TObject);
begin
BitBtn14.Visible := False;
BitBtn13.Visible := False;

BitBtn9.Visible  := True;
BitBtn10.Visible := True;
BitBtn11.Visible := True;
BitBtn12.Visible := True;

Clean;
end;

procedure TForm2.BitBtn15Click(Sender: TObject);
BEGIN
Panel3.Visible := False;
Panel9.Enabled := True;

END;

procedure TForm2.BitBtn16Click(Sender: TObject);
BEGIN

      with dmtk.ZCek do
      begin
      Edit1.Text := FieldByName('nmr_induk_mrd').AsString;
      Edit2.Text := FieldByName('nama_anak_lengkap').AsString;
      end;

Panel3.Visible := False;
Panel9.Enabled := True;

END;

procedure TForm2.BitBtn17Click(Sender: TObject);
begin
PanelCariDalam.Visible := True;
PanelCariDalam.BringToFront;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
Form1.Show;

Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
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

procedure TForm2.BitBtn3Click(Sender: TObject);
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

procedure TForm2.BitBtn4Click(Sender: TObject);
begin
Form4.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
Form7.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
end;

procedure TForm2.BitBtn6Click(Sender: TObject);
begin
Form6.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form7.Hide;
end;

procedure TForm2.BitBtn7Click(Sender: TObject);
begin
Form5.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm2.BitBtn8Click(Sender: TObject);
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

procedure TForm2.BitBtn9Click(Sender: TObject);
BEGIN

//PENGECEKAN//

if Edit1.Text = '' then MessageDlg('Anda Belum Memilih Murid' + #13 + 'Silahkan Pilih Murid Terlebih Dahulu', mtinformation,[mbOk],0)
else if Edit2.Text = '' then MessageDlg('Anda Belum Memilih Murid' + #13 + 'Silahkan Pilih Murid Terlebih Dahulu', mtinformation,[mbOk],0)
else if

//(

(
(Edit3.Text = '') or
(Edit4.Text = '')  or
(Edit5.Text = '') or
(Edit6.Text = '') or
(ComboBox1.Text = '--Pilih Agama--') or
(ComboBox2.Text = '--Pilih Pendidikan--') or
(ComboBox3.Text = '--Pilih KWRGN--') or

(Edit7.Text = '') or
(Edit8.Text = '') or
(Edit9.Text = '') or
(Edit10.Text = '') or
(ComboBox4.Text = '--Pilih Agama--') or
(ComboBox5.Text = '--Pilih Pendidikan--') or
(ComboBox6.Text = '--Pilih KWRGN--')
)

{and

(
(Edit11.Text = '') or
(Edit12.Text = '') or
(Edit13.Text = '') or
(Edit14.Text = '')
)

)}

then MessageDlg('Anda Belum Mengisi Data Orang Tua / Wali Murid Dengan Lengkap' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)

else

  Begin

  with udm.dmtk.ZOrtu do
  begin

  Append;
  FieldByName('nmr_induk_mrd').AsString := Edit1.Text;
  FieldByName('nama_anak_lengkap').AsString := Edit2.Text;
  FieldByName('nama_ayah').AsString := Edit3.Text;
  FieldByName('nama_ibu').AsString := Edit7.Text;
  FieldByName('agama_ayah').AsString := ComboBox1.Text;
  FieldByName('agama_ibu').AsString := ComboBox4.Text;
  FieldByName('kwrgn_ayah').AsString := ComboBox3.Text;
  FieldByName('kwrgn_ibu').AsString := ComboBox6.Text;
  FieldByName('pend_ayah').AsString := ComboBox2.Text;
  FieldByName('pend_ibu').AsString := ComboBox5.Text;
  FieldByName('pekerjaan_ayah').AsString := Edit4.Text;
  FieldByName('pekerjaan_ibu').AsString := Edit8.Text;
  FieldByName('alamatrmh_ayah').AsString := Edit5.Text;
  FieldByName('alamatrmh_ibu').AsString := Edit9.Text;
  FieldByName('alamatkntr_ayah').AsString := Edit6.Text;
  FieldByName('alamatkntr_ibu').AsString := Edit10.Text;
  FieldByName('nama_wali').AsString := Edit11.Text;
  FieldByName('hubungan_wali').AsString := Edit12.Text;
  FieldByName('pend_wali').AsString := Edit13.Text;
  FieldByName('pekerjaan_wali').AsString := Edit14.Text;
  Post;

  end;

  Clean;


  End;


END;

procedure TForm2.Button1Click(Sender: TObject);
BEGIN

Panel3.Visible := True;
Panel9.Enabled := False;
Panel3.BringToFront;

with dmtk.ZCek do
begin
Close;
Open;
end;



END;


procedure TForm2.Button2Click(Sender: TObject);
Begin

begin
if Edit15.Text = '' then
    begin
        with dmtk.ZOrtu do
        begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM orangtua');
        Open;
        end
    end

    else if ComboBox8.ItemIndex = (0) then
    with dmtk.ZOrtu do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM orangtua WHERE nmr_induk_mrd LIKE ''%' + (Edit15.Text) + '%''');
    Open;


    if dmtk.ZOrtu.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit15.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (1) then
    with dmtk.ZOrtu do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM orangtua WHERE nama_anak_lengkap LIKE ''%' + (Edit15.Text) + '%''');
    Open;


    if dmtk.ZOrtu.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit15.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (2) then
    with dmtk.ZOrtu do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM orangtua WHERE nama_ayah LIKE ''%' + (Edit15.Text) + '%''');
    Open;


    if dmtk.ZOrtu.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit15.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (3) then
    with dmtk.ZOrtu do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM orangtua WHERE nama_ibu LIKE ''%' + (Edit15.Text) + '%''');
    Open;


    if dmtk.ZOrtu.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit15.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (4) then
    with dmtk.ZOrtu do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM orangtua WHERE nama_wali LIKE ''%' + (Edit15.Text) + '%''');
    Open;


    if dmtk.ZOrtu.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit15.Clear;
    end
    end

end;
Panel9.Enabled := True;
Panel10.Visible := False;
Panel10.SendToBack;
End;

procedure TForm2.ButtonCariDalamClick(Sender: TObject);
Begin

begin
if EditCariDalam.Text = '' then
    begin
        with dmtk.ZCek do
        begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM murid WHERE NOT EXISTS  (SELECT * FROM orangtua WHERE orangtua.nmr_induk_mrd = murid.nmr_induk_mrd)');
        Open;
        end
    end

    else if ComboBoxCariDalam.ItemIndex = (0) then
    with dmtk.ZCek do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid WHERE NOT EXISTS (SELECT * FROM orangtua WHERE orangtua.nmr_induk_mrd = murid.nmr_induk_mrd) AND murid.nmr_induk_mrd LIKE ''%' + (EditCariDalam.Text) + '%''');
    Open;


    if dmtk.ZCek.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    EditCariDalam.Clear;
    end
    end

    else if ComboBoxCariDalam.ItemIndex = (1) then
    with dmtk.ZCek do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid WHERE NOT EXISTS (SELECT * FROM orangtua WHERE orangtua.nmr_induk_mrd = murid.nmr_induk_mrd) AND murid.nama_anak_lengkap LIKE ''%' + (EditCariDalam.Text) + '%''');
    Open;


    if dmtk.ZCek.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    EditCariDalam.Clear;
    end
    end

    else if ComboBoxCariDalam.ItemIndex = (2) then
    with dmtk.ZCek do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid WHERE NOT EXISTS (SELECT * FROM orangtua WHERE orangtua.nmr_induk_mrd = murid.nmr_induk_mrd) AND murid.kelompok LIKE ''%' + (EditCariDalam.Text) + '%''');
    Open;


    if dmtk.ZCek.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    EditCariDalam.Clear;
    end
    end


end;
PanelCariDalam.Visible := False;
PanelCariDalam.SendToBack;
End;

procedure TForm2.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm2.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm2.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm2.ComboBox4KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm2.ComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm2.ComboBox6KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;



procedure TForm2.ComboBox8Change(Sender: TObject);
begin
Edit15.Enabled := True;
end;

procedure TForm2.ComboBoxCariDalamChange(Sender: TObject);
begin
EditCariDalam.Enabled := True;
end;

procedure TForm2.ComboBoxCariDalamKeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
BEGIN

Disable;
Button1.Enabled := False;
BitBtn9.Enabled := False;
BitBtn10.Enabled := True;
BitBtn11.Enabled := True;


Begin

      with dmtk.ZOrtu do

      begin
      Edit1.Text      :=  FieldByName('nmr_induk_mrd').AsString;
      Edit2.Text      :=  FieldByName('nama_anak_lengkap').AsString;
      Edit3.Text      :=  FieldByName('nama_ayah').AsString;
      Edit4.Text      :=  FieldByName('pekerjaan_ayah').AsString;
      Edit5.Text      :=  FieldByName('alamatrmh_ayah').AsString;
      Edit6.Text      :=  FieldByName('alamatkntr_ayah').AsString;
      Edit7.Text      :=  FieldByName('nama_ibu').AsString;
      Edit8.Text      :=  FieldByName('pekerjaan_ibu').AsString;
      Edit9.Text      :=  FieldByName('alamatrmh_ayah').AsString;
      Edit10.Text     :=  FieldByName('alamatkntr_ibu').AsString;
      Edit11.Text     :=  FieldByName('nama_wali').AsString;
      Edit12.Text     :=  FieldByName('hubungan_wali').AsString;
      Edit13.Text     :=  FieldByName('pend_wali').AsString;
      Edit14.Text     :=  FieldByName('pekerjaan_wali').AsString;
      ComboBox1.Text  :=  FieldByName('agama_ayah').AsString;
      ComboBox2.Text  :=  FieldByName('pend_ayah').AsString;
      ComboBox3.Text  :=  FieldByName('kwrgn_ayah').AsString;
      ComboBox4.Text  :=  FieldByName('agama_ibu').AsString;
      ComboBox5.Text  :=  FieldByName('pend_ibu').AsString;
      ComboBox6.Text  :=  FieldByName('kwrgn_ibu').AsString;
      end;

  End;


END;

procedure TForm2.DBGrid1DblClick(Sender: TObject);
begin
Clean;
Enable;
Button1.SetFocus;
end;

procedure TForm2.Disable;
BEGIN


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
Edit14.Enabled := False;

ComboBox1.Enabled := False;
ComboBox2.Enabled := False;
ComboBox3.Enabled := False;
ComboBox4.Enabled := False;
ComboBox5.Enabled := False;
ComboBox6.Enabled := False;



END;



procedure TForm2.Edit15Change(Sender: TObject);
begin
if Edit15.Text = '' then
    begin
    Edit15.Enabled := False;
    ComboBox8.Text := '--Cari Berdasarkan--';

      with dmtk.ZOrtu do
      begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from orangtua');
      Open;
      end;

    end;
end;

procedure TForm2.EditCariDalamChange(Sender: TObject);
begin
if EditCariDalam.Text = '' then
    begin
    EditCariDalam.Enabled := False;
    ComboBoxCariDalam.Text := '--Cari Berdasarkan--';

      with dmtk.ZCek do
      begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM murid WHERE NOT EXISTS  (SELECT * FROM orangtua WHERE orangtua.nmr_induk_mrd = murid.nmr_induk_mrd)');
      Open;
      end;

    end;

end;

procedure TForm2.Enable;
BEGIN


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
Edit14.Enabled := True;

ComboBox1.Enabled := True;
ComboBox2.Enabled := True;
ComboBox3.Enabled := True;
ComboBox4.Enabled := True;
ComboBox5.Enabled := True;
ComboBox6.Enabled := True;



END;



procedure TForm2.FormActivate(Sender: TObject);
begin
Form6.Refresh;
end;

procedure TForm2.Clean;
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
Edit14.Clear;

ComboBox1.Text := '--Pilih Agama--';
ComboBox2.Text := '--Pilih Pendidikan--';
ComboBox3.Text := '--Pilih KWRGN--';
ComboBox4.Text := '--Pilih Agama--';
ComboBox5.Text := '--Pilih Pendidikan--';
ComboBox6.Text := '--Pilih KWRGN--';

Button1.Enabled := True;
BitBtn9.Enabled := True;
BitBtn10.Enabled := False;
BitBtn11.Enabled := False;


END;




end.
