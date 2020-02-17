unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.UITypes, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,DateUtils, dxGDIPlusClasses;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel9: TPanel;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    ComboBox2: TComboBox;
    DateTimePicker1: TDateTimePicker;
    GroupBox5: TGroupBox;
    BitBtn14: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
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
    Panel3: TPanel;
    GroupBox7: TGroupBox;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    DateTimePicker2: TDateTimePicker;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    ComboBox3: TComboBox;
    Panel10: TPanel;
    Label5: TLabel;
    ComboBox8: TComboBox;
    Edit14: TEdit;
    Button3: TButton;
    PanelCariDalam: TPanel;
    Label3: TLabel;
    ComboBoxCariDalam: TComboBox;
    EditCariDalam: TEdit;
    ButtonCariDalam: TButton;
    ImageTK: TImage;
    Image1: TImage;
    procedure Button3Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox3Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Clean;
    procedure Enable;
    procedure Disable;
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker2KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
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
    procedure BitBtn12Click(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure ComboBoxCariDalamKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxCariDalamChange(Sender: TObject);
    procedure ButtonCariDalamClick(Sender: TObject);
    procedure EditCariDalamChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses udm, Unit1, Unit2, Unit4, Unit5, UnitLogin, Unit6, Unit7;

procedure TForm3.BitBtn10Click(Sender: TObject);
begin
Enable;

BitBtn9.Visible  := False;
BitBtn10.Visible := False;
BitBtn11.Visible := False;
BitBtn12.Visible := False;

BitBtn13.Visible := True;
BitBtn14.Visible := True;
end;




procedure TForm3.BitBtn11Click(Sender: TObject);
var nama,nmr : string;
BEGIN

Begin
with dmtk.ZMutasi do

  begin
  nama := dmtk.ZMutasi.FieldValues['nama_anak_lengkap'];
  nmr := dmtk.ZMutasi.FieldValues['nmr_induk_mrd'];
  end;

End;

if MessageDlg('Yakin Anda Akan Hapus Data Mutasi Murid Ini?' + #13+ #13 + 'Nomor Induk Murid : ' + nmr + #13 +'Nama Lengkap Murid : ' + nama, mtconfirmation,[mbYes,mbNo],0,mbNo)= mrYes then
Begin
with dmtk.ZMutasi do

  begin
  dmtk.ZMutasi.Delete;
  end;

  MessageDlg('Data Mutasi Murid Dengan Nomor Induk Murid : ' + nmr + #13 +'Atas Nama : ' + nama + #13 + 'Telah Berhasil Dihapus!', mtinformation,[mbOk],0);

  Enable;
  BitBtn9.Enabled := True;
  BitBtn10.Enabled := False;
  BitBtn11.Enabled := False;

  Button1.Enabled := True;
  Button2.Enabled := True;

  Clean;


  BitBtn13.Visible := False;
  BitBtn14.Visible := False;

  //Clean;

  BitBtn9.Visible := True;
  BitBtn10.Visible := True;
  BitBtn11.Visible := True;
  BitBtn12.Visible := True;

End;


END;

procedure TForm3.BitBtn12Click(Sender: TObject);
begin
Panel10.Visible := True;
Panel9.Enabled := False;
Panel10.BringToFront;
end;

procedure TForm3.BitBtn13Click(Sender: TObject);
BEGIN

      Begin

         Begin
              if ComboBox3.ItemIndex = 0 then
              Begin
                with dmtk.ZMutasi do
                begin
                Edit;
                FieldByName('nmr_induk_mrd').AsString := Edit5.Text;
                FieldByName('nmr_mutasi').AsString := Edit1.Text;
                FieldByName('nama_anak_lengkap').AsString := Edit6.Text;
                FieldByName('kelompok').AsString := ComboBox1.Text;
                FieldByName('diterima_tgl').AsDateTime := DateTimePicker1.Date;
                FieldByName('berasal_dari_tk').AsString := Edit2.Text;
                Post;
                end;

              End

              else if ComboBox3.ItemIndex = 1 then
              Begin
                with dmtk.ZMutasi do
                begin
                Edit;
                FieldByName('nmr_induk_mrd').AsString := Edit5.Text;
                FieldByName('nmr_mutasi').AsString := Edit1.Text;
                FieldByName('nama_anak_lengkap').AsString := Edit6.Text;
                FieldByName('kelompok').AsString := ComboBox1.Text;
                FieldByName('keluar_dari_tk').AsDateTime := DateTimePicker2.Date;
                FieldByName('keluar_karena').AsString := ComboBox2.Text;
                FieldByName('keluar_ke').AsString := Edit3.Text;
                Post;
                end;

              End;

         End;


      End;


  Enable;
  BitBtn9.Enabled := True;
  BitBtn10.Enabled := False;
  BitBtn11.Enabled := False;

  Button1.Enabled := True;
  Button2.Enabled := True;

  Clean;


  BitBtn13.Visible := False;
  BitBtn14.Visible := False;

  //Clean;

  BitBtn9.Visible := True;
  BitBtn10.Visible := True;
  BitBtn11.Visible := True;
  BitBtn12.Visible := True;

END;



procedure TForm3.BitBtn14Click(Sender: TObject);
begin

  Enable;
  BitBtn9.Enabled := True;
  BitBtn10.Enabled := False;
  BitBtn11.Enabled := False;

  Button1.Enabled := True;
  Button2.Enabled := True;

  Clean;


  BitBtn13.Visible := False;
  BitBtn14.Visible := False;

  //Clean;

  BitBtn9.Visible := True;
  BitBtn10.Visible := True;
  BitBtn11.Visible := True;
  BitBtn12.Visible := True;

end;

procedure TForm3.BitBtn15Click(Sender: TObject);
begin
Panel3.Visible := False;
Panel9.Enabled := True;
end;

procedure TForm3.BitBtn16Click(Sender: TObject);
BEGIN

      with dmtk.ZCekMutasi do
      begin
      Edit5.Text := FieldByName('nmr_induk_mrd').AsString;
      Edit6.Text := FieldByName('nama_anak_lengkap').AsString;
      ComboBox1.Text := FieldByName('kelompok').AsString;
      end;

Panel3.Visible := False;
Panel9.Enabled := True;

END;

procedure TForm3.BitBtn17Click(Sender: TObject);
begin
PanelCariDalam.Visible := True;
PanelCariDalam.BringToFront;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
Form1.Show;

Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
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

procedure TForm3.BitBtn3Click(Sender: TObject);
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

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
Form4.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm3.BitBtn5Click(Sender: TObject);
begin
Form7.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
end;

procedure TForm3.BitBtn6Click(Sender: TObject);
begin
Form6.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form7.Hide;
end;

procedure TForm3.BitBtn7Click(Sender: TObject);
begin
Form5.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm3.BitBtn8Click(Sender: TObject);
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

procedure TForm3.BitBtn9Click(Sender: TObject);
var  alsklr : string;
BEGIN
if Edit5.Text = '' then MessageDlg('Anda Belum Memilih Murid' + #13 + 'Silahkan Pilih Terlebih Dahulu', mtinformation,[mbOk],0)
else if Edit6.Text = '' then MessageDlg('Anda Belum Memilih Murid' + #13 + 'Silahkan Pilih Terlebih Dahulu', mtinformation,[mbOk],0)
else if ComboBox1.Text = '--Pilih Anak--' then MessageDlg('Anda Belum Memilih Murid' + #13 + 'Silahkan Pilih Terlebih Dahulu', mtinformation,[mbOk],0)
else if ComboBox3.Text = '--Pilih Mutasi--' then MessageDlg('Anda Belum Memilih Jenis Mutasi' + #13 + 'Silahkan Pilih Terlebih Dahulu', mtinformation,[mbOk],0)


else
  Begin
      if ComboBox3.ItemIndex = 0 then
      Begin
        with dmtk.ZMutasi do
        begin
        Append;
        FieldByName('nmr_induk_mrd').AsString := Edit5.Text;
        FieldByName('nmr_mutasi').AsString := Edit1.Text;
        FieldByName('nama_anak_lengkap').AsString := Edit6.Text;
        FieldByName('kelompok').AsString := ComboBox1.Text;
        FieldByName('diterima_tgl').AsDateTime := DateTimePicker1.Date;
        FieldByName('berasal_dari_tk').AsString := Edit2.Text;
        Post;
        end;
        Clean;
      End

      else if ComboBox3.ItemIndex = 1 then
      Begin

        with dmtk.ZMutasi do
        begin
        Append;
        FieldByName('nmr_induk_mrd').AsString := Edit5.Text;
        FieldByName('nmr_mutasi').AsString := Edit1.Text;
        FieldByName('nama_anak_lengkap').AsString := Edit6.Text;
        FieldByName('kelompok').AsString := ComboBox1.Text;
        FieldByName('keluar_dari_tk').AsDateTime := DateTimePicker2.Date;
        FieldByName('keluar_karena').AsString := ComboBox2.Text;
        FieldByName('keluar_ke').AsString := Edit3.Text;
        Post;
        end;
        Clean;
      End;
  End

END;

procedure TForm3.Button1Click(Sender: TObject);
var
n : integer;

BEGIN

if udm.dmtk.ZMutasi.RecordCount = 0 then

begin
n := 1;
Edit1.Text := IntToStr(n);
end

else

  Begin
  dmtk.ZMutasi.Last;
  n := dmtk.ZMutasi['nmr_mutasi'];

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

procedure TForm3.Button2Click(Sender: TObject);
begin
Panel3.Visible := True;
Panel9.Enabled := False;
Panel3.BringToFront;

with dmtk.ZCekMutasi do
begin
Close;
Open;
end;



end;

procedure TForm3.Button3Click(Sender: TObject);
Begin

begin
if Edit14.Text = '' then
    begin
        with dmtk.ZMutasi do
        begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM mutasi');
        Open;
        end
    end

    else if ComboBox8.ItemIndex = (0) then
    with dmtk.ZMutasi do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM mutasi WHERE nmr_induk_mrd LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZMutasi.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit14.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (1) then
    with dmtk.ZMutasi do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM mutasi WHERE nmr_mutasi LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZMutasi.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit14.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (2) then
    with dmtk.ZMutasi do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM mutasi WHERE nama_anak_lengkap LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZMutasi.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit14.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (3) then
    with dmtk.ZMutasi do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM mutasi WHERE kelompok LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZMutasi.RecordCount = 0 then
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


procedure TForm3.ButtonCariDalamClick(Sender: TObject);
Begin

begin
if EditCariDalam.Text = '' then
    begin
        with dmtk.ZCekMutasi do
        begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM murid WHERE NOT EXISTS  (SELECT * FROM mutasi WHERE mutasi.nmr_induk_mrd = murid.nmr_induk_mrd)');
        Open;
        end
    end

    else if ComboBoxCariDalam.ItemIndex = (0) then
    with dmtk.ZCekMutasi do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid WHERE NOT EXISTS (SELECT * FROM mutasi WHERE mutasi.nmr_induk_mrd = murid.nmr_induk_mrd) AND murid.nmr_induk_mrd LIKE ''%' + (EditCariDalam.Text) + '%''');
    Open;


    if dmtk.ZCekMutasi.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    EditCariDalam.Clear;
    end
    end

    else if ComboBoxCariDalam.ItemIndex = (1) then
    with dmtk.ZCekMutasi do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid WHERE NOT EXISTS (SELECT * FROM mutasi WHERE mutasi.nmr_induk_mrd = murid.nmr_induk_mrd) AND murid.nama_anak_lengkap LIKE ''%' + (EditCariDalam.Text) + '%''');
    Open;


    if dmtk.ZCekMutasi.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    EditCariDalam.Clear;
    end
    end

    else if ComboBoxCariDalam.ItemIndex = (2) then
    with dmtk.ZCekMutasi do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid WHERE NOT EXISTS (SELECT * FROM mutasi WHERE mutasi.nmr_induk_mrd = murid.nmr_induk_mrd) AND murid.kelompok LIKE ''%' + (EditCariDalam.Text) + '%''');
    Open;


    if dmtk.ZCekMutasi.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    EditCariDalam.Clear;
    end
    end


end;
PanelCariDalam.Visible := False;
PanelCariDalam.SendToBack;
End;

procedure TForm3.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm3.ComboBox3Change(Sender: TObject);
BEGIN

case ComboBox3.ItemIndex of
0 : begin
    Label19.Visible := True;
    Label20.Visible := True;
    DateTimePicker1.Visible := True;
    Edit2.Visible := True;

    Label21.Visible := False;
    Label24.Visible := False;
    Label23.Visible := False;
    DateTimePicker2.Visible := False;
    ComboBox2.Visible := False;
    Edit3.Visible := False;
    end;

1 : begin
    Label21.Visible := True;
    Label24.Visible := True;
    Label23.Visible := True;
    DateTimePicker2.Visible := True;
    ComboBox2.Visible := True;
    Edit3.Visible := True;

    Label19.Visible := False;
    Label20.Visible := False;
    DateTimePicker1.Visible := False;
    Edit2.Visible := False;
    end;

end;


END;

procedure TForm3.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm3.ComboBox8Change(Sender: TObject);
begin
Edit14.Enabled := True;
end;

procedure TForm3.ComboBoxCariDalamChange(Sender: TObject);
begin
EditCariDalam.Enabled := True;
end;

procedure TForm3.ComboBoxCariDalamKeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm3.DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm3.DateTimePicker2KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
var

alsklr,tkasal : string;
tglklr : TDate;

BEGIN
if ComboBox3.Text = '--Pilih Mutasi--' then

begin
MessageDlg('Silahkan Pilih Jenis Mutasi Terlebih Dahulu!', mtinformation,[mbOk],0);
Button1.SetFocus;
end

else

  Begin

  Disable;
  BitBtn9.Enabled := False;
  BitBtn10.Enabled := True;
  BitBtn11.Enabled := True;

  Button1.Enabled := False;
  Button2.Enabled := False;

    BEGIN


        BEGIN

        {BitBtn9.Visible  := False;
        BitBtn10.Visible := False;
        BitBtn11.Visible := False;
        BitBtn12.Visible := False;

        BitBtn13.Visible := True;
        BitBtn14.Visible := True; }


              Begin
                 Begin
                      if ComboBox3.ItemIndex = 0 then
                      Begin

                        with dmtk.ZMutasi do
                        begin

                        tkasal := FieldValues['berasal_dari_tk'];

                        if tkasal = '' then

                        begin

                        Edit5.Text  :=  FieldByName('nmr_induk_mrd').AsString;
                        Edit1.Text  :=  FieldByName('nmr_mutasi').AsString;
                        Edit6.Text  :=  FieldByName('nama_anak_lengkap').AsString;
                        ComboBox1.Text  :=  FieldByName('kelompok').AsString;
                        DateTimePicker1.Date  :=  Now;
                        Edit2.Text  :=  FieldByName('berasal_dari_tk').AsString;

                        end

                        else

                        begin

                        Edit5.Text  :=  FieldByName('nmr_induk_mrd').AsString;
                        Edit1.Text  :=  FieldByName('nmr_mutasi').AsString;
                        Edit6.Text  :=  FieldByName('nama_anak_lengkap').AsString;
                        ComboBox1.Text  :=  FieldByName('kelompok').AsString;
                        DateTimePicker1.Date  :=  FieldByName('diterima_tgl').AsDateTime;
                        Edit2.Text  :=  FieldByName('berasal_dari_tk').AsString;

                        end;

                         end;


                      End

                      else if ComboBox3.ItemIndex = 1 then

                      Begin
                        with dmtk.ZMutasi do
                        begin

                        alsklr := FieldValues['keluar_karena'];
                        tglklr := FieldValues['keluar_dari_tk'];

                        if alsklr = ''   then

                            begin

                            alsklr := NullAsStringValue;
                            ComboBox2.Text := '--Pilih Alasan--';
                            Edit5.Text  :=  FieldByName('nmr_induk_mrd').AsString;
                            Edit1.Text  :=  FieldByName('nmr_mutasi').AsString;
                            Edit6.Text  :=  FieldByName('nama_anak_lengkap').AsString;
                            ComboBox1.Text  :=  FieldByName('kelompok').AsString;
                            DateTimePicker2.Date  :=  Now;
                            Edit3.Text  :=  FieldByName('keluar_ke').AsString;

                            end

                        else

                            begin

                            Edit5.Text  :=  FieldByName('nmr_induk_mrd').AsString;
                            Edit1.Text  :=  FieldByName('nmr_mutasi').AsString;
                            Edit6.Text  :=  FieldByName('nama_anak_lengkap').AsString;
                            ComboBox1.Text  :=  FieldByName('kelompok').AsString;
                            DateTimePicker2.Date  :=  FieldByName('keluar_dari_tk').AsDateTime;
                            ComboBox2.Text  :=  FieldByName('keluar_karena').AsString;
                            Edit3.Text  :=  FieldByName('keluar_ke').AsString;

                            end;


                        end;




                      End;

                 End;


              End;


        END;

  END;


End;



END;

procedure TForm3.DBGrid1DblClick(Sender: TObject);
begin
Enable;
Clean;

Button1.Enabled := True;
Button2.Enabled := True;
Button1.SetFocus;

BitBtn9.Enabled := True;
BitBtn10.Enabled := False;
BitBtn11.Enabled := False;

end;



procedure TForm3.Edit14Change(Sender: TObject);
begin
if Edit14.Text = '' then
    begin
    Edit14.Enabled := False;
    ComboBox8.Text := '--Cari Berdasarkan--';

      with dmtk.ZMutasi do
      begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from mutasi');
      Open;
      end;

    end;
end;



procedure TForm3.EditCariDalamChange(Sender: TObject);
begin
if EditCariDalam.Text = '' then
    begin
    EditCariDalam.Enabled := False;
    ComboBoxCariDalam.Text := '--Cari Berdasarkan--';

      with dmtk.ZCekMutasi do
      begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM murid WHERE NOT EXISTS  (SELECT * FROM mutasi WHERE mutasi.nmr_induk_mrd = murid.nmr_induk_mrd)');
      Open;
      end;

    end;

end;

procedure TForm3.FormActivate(Sender: TObject);
begin
Form6.Refresh;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
DateTimePicker1.MaxDate := IncSecond(Date);
DateTimePicker2.MaxDate := IncSecond(Date);

DateTimePicker1.Date := Now;
DateTimePicker2.Date := Now;

NullStrictConvert := False;
end;


procedure TForm3.Enable;
begin

//Button1.Enabled := True;
//Button2.Enabled := True;

Edit2.Enabled := True;
Edit3.Enabled := True;

DateTimePicker1.Enabled := True;
DateTimePicker2.Enabled := True;

ComboBox2.Enabled := True;

end;


procedure TForm3.Disable;
begin

//Button1.Enabled := False;
//Button2.Enabled := False;

Edit2.Enabled := False;
Edit3.Enabled := False;

DateTimePicker1.Enabled := False;
DateTimePicker2.Enabled := False;

ComboBox2.Enabled := False;


end;

procedure TForm3.Clean;
begin

Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit5.Clear;
Edit6.Clear;

ComboBox3.ItemIndex := -1;

ComboBox1.Text := '--Pilih Anak--';
ComboBox2.Text := '--Pilih Alasan--';
ComboBox3.Text := '--Pilih Mutasi--';

DateTimePicker1.Date := Now;
DateTimePicker2.Date := Now;

Label21.Visible := False;
Label24.Visible := False;
Label23.Visible := False;
DateTimePicker2.Visible := False;
ComboBox2.Visible := False;
Edit3.Visible := False;

Label19.Visible := False;
Label20.Visible := False;
DateTimePicker1.Visible := False;
Edit2.Visible := False;


end;



end.
